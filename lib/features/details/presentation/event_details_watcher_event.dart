part of 'event_details_watcher_bloc.dart';

@immutable
sealed class EventDetailsWatcherEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class FetchEventById extends EventDetailsWatcherEvent {
  FetchEventById(this.eventId);

  final String eventId;
}

class EventReceived extends EventDetailsWatcherEvent {
  EventReceived(this.failureOrEvent);

  final Either<EventFailure, Event> failureOrEvent;
}
