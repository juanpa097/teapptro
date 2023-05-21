part of 'events_watcher_bloc.dart';

sealed class EventsWatcherEvent {}

class WatchAllStarted extends EventsWatcherEvent {}

class SearchForEvents extends EventsWatcherEvent {
  SearchForEvents(this.query);

  final String query;
}

class EventsReceived extends EventsWatcherEvent {
  EventsReceived(this.failureOrEvents);

  Either<EventFailure, List<Event>> failureOrEvents;
}
