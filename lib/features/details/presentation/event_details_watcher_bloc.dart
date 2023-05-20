import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../search/domain/entities/event.dart';
import '../../search/domain/entities/event_failure.dart';
import '../../search/domain/repositories/events_repository.dart';

part 'event_details_watcher_event.dart';

part 'event_details_watcher_state.dart';

@injectable
class EventDetailsWatcherBloc
    extends Bloc<EventDetailsWatcherEvent, EventDetailsWatcherState> {
  EventDetailsWatcherBloc(this._eventsRepository) : super(Initial()) {
    on<EventDetailsWatcherEvent>(_handleEvent);
  }

  final EventsRepository _eventsRepository;
  StreamSubscription<Either<EventFailure, Event>>?
      _eventDetailsStreamSubscription;

  Future<void> _handleEvent(
    EventDetailsWatcherEvent event,
    Emitter<EventDetailsWatcherState> emit,
  ) async {
    switch (event) {
      case final FetchEventById eventFetched:
        await _handleFetchEvent(emit, eventFetched);

      case final EventReceived eventReceived:
        _handleEventReceived(emit, eventReceived);
    }
  }

  void _handleEventReceived(
    Emitter<EventDetailsWatcherState> emit,
    EventReceived eventReceived,
  ) {
    emit(
      eventReceived.failureOrEvent.fold(
        (f) => LoadFailure(f),
        (event) => LoadSuccess(event),
      ),
    );
  }

  Future<void> _handleFetchEvent(
    Emitter<EventDetailsWatcherState> emit,
    FetchEventById eventFetched,
  ) async {
    emit(LoadInProgress());
    await _eventDetailsStreamSubscription?.cancel();
    _eventDetailsStreamSubscription = _eventsRepository
        .watchEvent(eventFetched.eventId)
        .listen((failureOrEvent) => add(EventReceived(failureOrEvent)));
  }
}
