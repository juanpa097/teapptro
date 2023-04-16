part of 'update_is_favorite_bloc.dart';

@freezed
class UpdateIsFavoriteState with _$UpdateIsFavoriteState {
  const factory UpdateIsFavoriteState.initial() = _Initial;

  const factory UpdateIsFavoriteState.updateInProgress() = _UpdateInProgress;

  const factory UpdateIsFavoriteState.updateSuccess() = _UpdateSuccess;

  const factory UpdateIsFavoriteState.updateFailure(EventFailure failure) =
      _UpdateFailure;
}
