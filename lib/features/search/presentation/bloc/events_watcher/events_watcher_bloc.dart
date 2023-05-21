import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/event.dart';
import '../../../domain/entities/event_failure.dart';
import '../../../domain/repositories/events_repository.dart';

part 'events_watcher_event.dart';

part 'events_watcher_state.dart';

@injectable
class EventsWatcherBloc extends Bloc<EventsWatcherEvent, EventsWatcherState> {
  EventsWatcherBloc(this._eventsRepository) : super(Initial()) {
    on<EventsWatcherEvent>(_handeWatcherEvent);
  }

  final EventsRepository _eventsRepository;

  StreamSubscription<Either<EventFailure, List<Event>>>?
      _eventsStreamSubscription;

  Future<void> _handeWatcherEvent(
    EventsWatcherEvent event,
    Emitter<EventsWatcherState> emit,
  ) async {
    switch (event) {
      case WatchAllStarted _:
        await _handleWatchAllStarted(emit);

      case final SearchForEvents searchEvent:
        if (searchEvent.query.isEmpty) {
          await _handleWatchAllStarted(emit);
        } else {
          await _handleSearchForEvents(searchEvent, emit);
        }

      case final EventsReceived eventReceived:
        _handleEventsReceived(emit, eventReceived);
    }
  }

  void _handleEventsReceived(
    Emitter<EventsWatcherState> emit,
    EventsReceived eventReceived,
  ) {
    emit(
      eventReceived.failureOrEvents.fold(
        (f) => LoadFailure(f),
        (events) => LoadSuccess(events),
      ),
    );
  }

  Future<void> _handleWatchAllStarted(
    Emitter<EventsWatcherState> emit,
  ) async {
    emit(LoadInProgress());
    await _eventsStreamSubscription?.cancel();
    _eventsStreamSubscription = _eventsRepository.watchAll().listen(
          (Either<EventFailure, List<Event>> failureOrEvents) =>
              add(EventsReceived(failureOrEvents)),
        );
  }

  Future<void> _handleSearchForEvents(
    SearchForEvents searchEvent,
    Emitter<EventsWatcherState> emit,
  ) async {
    emit(LoadInProgress());
    await _eventsStreamSubscription?.cancel();
    _eventsStreamSubscription =
        _eventsRepository.watchByName(searchEvent.query).listen(
              (Either<EventFailure, List<Event>> failureOrEvents) =>
                  add(EventsReceived(failureOrEvents)),
            );
  }

  @override
  Future<void> close() async {
    await _eventsStreamSubscription?.cancel();
    super.close();
  }
}
