import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/event.dart';
import '../../../domain/entities/event_failure.dart';
import '../../../domain/repositories/events_repository.dart';

part 'events_watcher_bloc.freezed.dart';
part 'events_watcher_event.dart';
part 'events_watcher_state.dart';

@injectable
class EventsWatcherBloc extends Bloc<EventsWatcherEvent, EventsWatcherState> {
  EventsWatcherBloc(this._eventsRepository)
      : super(const EventsWatcherState.initial()) {
    on<EventsWatcherEvent>(
      (EventsWatcherEvent event, Emitter<EventsWatcherState> emit) {
        event.when(
          watchAllStarted: () async {
            emit(const EventsWatcherState.loadInProgress());
            await _eventsStreamSubscription?.cancel();
            _eventsStreamSubscription = _eventsRepository.watchAll().listen(
                  (Either<EventFailure, List<Event>> failureOrEvents) =>
                      add(EventsWatcherEvent.eventsReceived(failureOrEvents)),
                );
          },
          eventsReceived: (Either<EventFailure, List<Event>> e) {
            emit(
              e.fold(
                (EventFailure f) => EventsWatcherState.loadFailure(f),
                (List<Event> events) => EventsWatcherState.loadSuccess(events),
              ),
            );
          },
        );
      },
    );
  }
  final EventsRepository _eventsRepository;

  StreamSubscription<Either<EventFailure, List<Event>>>?
      _eventsStreamSubscription;

  @override
  Future<void> close() async {
    await _eventsStreamSubscription?.cancel();
    super.close();
  }
}
