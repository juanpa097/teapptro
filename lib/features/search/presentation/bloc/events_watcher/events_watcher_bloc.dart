import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teapptro/features/search/domain/entities/event.dart';
import 'package:teapptro/features/search/domain/entities/event_failure.dart';
import 'package:teapptro/features/search/domain/repositories/events_repository.dart';

part 'events_watcher_bloc.freezed.dart';

part 'events_watcher_event.dart';

part 'events_watcher_state.dart';

@injectable
class EventsWatcherBloc extends Bloc<EventsWatcherEvent, EventsWatcherState> {
  final EventsRepository _eventsRepository;

  StreamSubscription<Either<EventFailure, List<Event>>>?
      _eventsStreamSubscription;

  EventsWatcherBloc(this._eventsRepository)
      : super(const EventsWatcherState.initial()) {
    // add(EventsWatcherEvent.eventsReceived(left(const EventFailure.unexpected())));
    on<EventsWatcherEvent>(
      (event, emit) {
        event.when(
          watchAllStarted: () async {
            emit(const EventsWatcherState.loadInProgress());
            await _eventsStreamSubscription?.cancel();
            _eventsStreamSubscription = _eventsRepository.watchAll().listen(
                  (failureOrEvents) =>
                      add(EventsWatcherEvent.eventsReceived(failureOrEvents)),
                );
          },
          eventsReceived: (e) {
            emit(
              e.fold(
                (f) => EventsWatcherState.loadFailure(f),
                (events) => EventsWatcherState.loadSuccess(events),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _eventsStreamSubscription?.cancel();
    super.close();
  }
}
