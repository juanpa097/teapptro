part of 'events_watcher_bloc.dart';

@freezed
class EventsWatcherEvent with _$EventsWatcherEvent {
  const factory EventsWatcherEvent.watchAllStarted() = _WatchAllStarted;

  const factory EventsWatcherEvent.eventsReceived(
      Either<EventFailure, List<Event>> failureOrEvents) = _EventsReceived;
}
