part of 'events_watcher_bloc.dart';

sealed class EventsWatcherEvent {}

class WatchAllStarted extends EventsWatcherEvent {}

class EventsReceived extends EventsWatcherEvent {
  EventsReceived(this.failureOrEvents);

  Either<EventFailure, List<Event>> failureOrEvents;
}
