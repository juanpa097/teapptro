part of 'events_watcher_bloc.dart';

sealed class EventsWatcherState {}

class Initial extends EventsWatcherState {}

class LoadInProgress extends EventsWatcherState {}

class LoadSuccess extends EventsWatcherState {
  LoadSuccess(this.events);

  final List<Event> events;
}

class LoadFailure extends EventsWatcherState {
  LoadFailure(this.failure);

  final EventFailure failure;
}
