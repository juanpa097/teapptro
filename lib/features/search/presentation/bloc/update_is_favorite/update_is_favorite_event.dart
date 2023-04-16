part of 'update_is_favorite_bloc.dart';

@freezed
class UpdateIsFavoriteEvent with _$UpdateIsFavoriteEvent {
  const factory UpdateIsFavoriteEvent.isFavoriteChanged(
    String eventId,
    bool isFavorite,
  ) = _IsFavoriteChanged;
}
