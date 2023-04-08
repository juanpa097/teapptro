part of 'events_watcher_bloc.dart';

@freezed
class EventsWatcherState with _$EventsWatcherState {
  const factory EventsWatcherState.initial() = _Initial;
  const factory EventsWatcherState.loadInProgress() = _LoadInProgress;
  const factory EventsWatcherState.loadSuccess(List<Event> events) =
      _LoadSuccess;
  const factory EventsWatcherState.loadFailure(EventFailure failure) =
      _LoadFailure;
}
