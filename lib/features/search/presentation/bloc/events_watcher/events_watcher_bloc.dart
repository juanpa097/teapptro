import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teapptro/features/search/domain/entities/event.dart';
import 'package:teapptro/features/search/domain/entities/event_failure.dart';
import 'package:teapptro/features/search/domain/repositories/events_repository.dart';

part 'events_watcher_bloc.freezed.dart';

part 'events_watcher_event.dart';

part 'events_watcher_state.dart';

class EventsWatcherBloc extends Bloc<EventsWatcherEvent, EventsWatcherState> {
  final EventsRepository _eventsRepository;

  StreamSubscription<Either<EventFailure, List<Event>>>?
      _eventsStreamSubscription;

  EventsWatcherBloc(this._eventsRepository)
      : super(const EventsWatcherState.initial()) {
    on<EventsWatcherEvent>(
      (event, emit) {
        event.map(
          watchAllStarted: (e) async* {
            yield const EventsWatcherState.loadInProgress();
            await _eventsStreamSubscription?.cancel();
            _eventsStreamSubscription =
                _eventsRepository.watchAll().listen((failureOrNotes) {
              add(EventsWatcherEvent.eventsReceived(failureOrNotes));
            });
          },
          eventsReceived: (e) async* {
            yield e.failureOrEvents.fold(
              (f) => EventsWatcherState.loadFailure(f),
              (events) => EventsWatcherState.loadSuccess(events),
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
