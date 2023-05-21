part of 'event_details_watcher_bloc.dart';

sealed class EventDetailsWatcherState {}

class Initial extends EventDetailsWatcherState {}

class LoadInProgress extends EventDetailsWatcherState {}

class LoadSuccess extends EventDetailsWatcherState {
  LoadSuccess(this.event);

  final Event event;
}

class LoadFailure extends EventDetailsWatcherState {
  LoadFailure(this.failure);

  final EventFailure failure;
}
