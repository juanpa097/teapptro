// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_is_favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateIsFavoriteEvent {
  String get eventId => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, bool isFavorite)
        isFavoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, bool isFavorite)? isFavoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, bool isFavorite)? isFavoriteChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsFavoriteChanged value) isFavoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsFavoriteChanged value)? isFavoriteChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsFavoriteChanged value)? isFavoriteChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateIsFavoriteEventCopyWith<UpdateIsFavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateIsFavoriteEventCopyWith<$Res> {
  factory $UpdateIsFavoriteEventCopyWith(UpdateIsFavoriteEvent value,
          $Res Function(UpdateIsFavoriteEvent) then) =
      _$UpdateIsFavoriteEventCopyWithImpl<$Res, UpdateIsFavoriteEvent>;
  @useResult
  $Res call({String eventId, bool isFavorite});
}

/// @nodoc
class _$UpdateIsFavoriteEventCopyWithImpl<$Res,
        $Val extends UpdateIsFavoriteEvent>
    implements $UpdateIsFavoriteEventCopyWith<$Res> {
  _$UpdateIsFavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IsFavoriteChangedCopyWith<$Res>
    implements $UpdateIsFavoriteEventCopyWith<$Res> {
  factory _$$_IsFavoriteChangedCopyWith(_$_IsFavoriteChanged value,
          $Res Function(_$_IsFavoriteChanged) then) =
      __$$_IsFavoriteChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventId, bool isFavorite});
}

/// @nodoc
class __$$_IsFavoriteChangedCopyWithImpl<$Res>
    extends _$UpdateIsFavoriteEventCopyWithImpl<$Res, _$_IsFavoriteChanged>
    implements _$$_IsFavoriteChangedCopyWith<$Res> {
  __$$_IsFavoriteChangedCopyWithImpl(
      _$_IsFavoriteChanged _value, $Res Function(_$_IsFavoriteChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? isFavorite = null,
  }) {
    return _then(_$_IsFavoriteChanged(
      null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsFavoriteChanged implements _IsFavoriteChanged {
  const _$_IsFavoriteChanged(this.eventId, this.isFavorite);

  @override
  final String eventId;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'UpdateIsFavoriteEvent.isFavoriteChanged(eventId: $eventId, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsFavoriteChanged &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventId, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsFavoriteChangedCopyWith<_$_IsFavoriteChanged> get copyWith =>
      __$$_IsFavoriteChangedCopyWithImpl<_$_IsFavoriteChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String eventId, bool isFavorite)
        isFavoriteChanged,
  }) {
    return isFavoriteChanged(eventId, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String eventId, bool isFavorite)? isFavoriteChanged,
  }) {
    return isFavoriteChanged?.call(eventId, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String eventId, bool isFavorite)? isFavoriteChanged,
    required TResult orElse(),
  }) {
    if (isFavoriteChanged != null) {
      return isFavoriteChanged(eventId, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IsFavoriteChanged value) isFavoriteChanged,
  }) {
    return isFavoriteChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IsFavoriteChanged value)? isFavoriteChanged,
  }) {
    return isFavoriteChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IsFavoriteChanged value)? isFavoriteChanged,
    required TResult orElse(),
  }) {
    if (isFavoriteChanged != null) {
      return isFavoriteChanged(this);
    }
    return orElse();
  }
}

abstract class _IsFavoriteChanged implements UpdateIsFavoriteEvent {
  const factory _IsFavoriteChanged(
      final String eventId, final bool isFavorite) = _$_IsFavoriteChanged;

  @override
  String get eventId;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_IsFavoriteChangedCopyWith<_$_IsFavoriteChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateIsFavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(EventFailure failure) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(EventFailure failure)? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(EventFailure failure)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateIsFavoriteStateCopyWith<$Res> {
  factory $UpdateIsFavoriteStateCopyWith(UpdateIsFavoriteState value,
          $Res Function(UpdateIsFavoriteState) then) =
      _$UpdateIsFavoriteStateCopyWithImpl<$Res, UpdateIsFavoriteState>;
}

/// @nodoc
class _$UpdateIsFavoriteStateCopyWithImpl<$Res,
        $Val extends UpdateIsFavoriteState>
    implements $UpdateIsFavoriteStateCopyWith<$Res> {
  _$UpdateIsFavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UpdateIsFavoriteStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UpdateIsFavoriteState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(EventFailure failure) updateFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(EventFailure failure)? updateFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(EventFailure failure)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UpdateIsFavoriteState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_UpdateInProgressCopyWith<$Res> {
  factory _$$_UpdateInProgressCopyWith(
          _$_UpdateInProgress value, $Res Function(_$_UpdateInProgress) then) =
      __$$_UpdateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateInProgressCopyWithImpl<$Res>
    extends _$UpdateIsFavoriteStateCopyWithImpl<$Res, _$_UpdateInProgress>
    implements _$$_UpdateInProgressCopyWith<$Res> {
  __$$_UpdateInProgressCopyWithImpl(
      _$_UpdateInProgress _value, $Res Function(_$_UpdateInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateInProgress implements _UpdateInProgress {
  const _$_UpdateInProgress();

  @override
  String toString() {
    return 'UpdateIsFavoriteState.updateInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(EventFailure failure) updateFailure,
  }) {
    return updateInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(EventFailure failure)? updateFailure,
  }) {
    return updateInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(EventFailure failure)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateInProgress implements UpdateIsFavoriteState {
  const factory _UpdateInProgress() = _$_UpdateInProgress;
}

/// @nodoc
abstract class _$$_UpdateSuccessCopyWith<$Res> {
  factory _$$_UpdateSuccessCopyWith(
          _$_UpdateSuccess value, $Res Function(_$_UpdateSuccess) then) =
      __$$_UpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateSuccessCopyWithImpl<$Res>
    extends _$UpdateIsFavoriteStateCopyWithImpl<$Res, _$_UpdateSuccess>
    implements _$$_UpdateSuccessCopyWith<$Res> {
  __$$_UpdateSuccessCopyWithImpl(
      _$_UpdateSuccess _value, $Res Function(_$_UpdateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess();

  @override
  String toString() {
    return 'UpdateIsFavoriteState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(EventFailure failure) updateFailure,
  }) {
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(EventFailure failure)? updateFailure,
  }) {
    return updateSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(EventFailure failure)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements UpdateIsFavoriteState {
  const factory _UpdateSuccess() = _$_UpdateSuccess;
}

/// @nodoc
abstract class _$$_UpdateFailureCopyWith<$Res> {
  factory _$$_UpdateFailureCopyWith(
          _$_UpdateFailure value, $Res Function(_$_UpdateFailure) then) =
      __$$_UpdateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({EventFailure failure});

  $EventFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_UpdateFailureCopyWithImpl<$Res>
    extends _$UpdateIsFavoriteStateCopyWithImpl<$Res, _$_UpdateFailure>
    implements _$$_UpdateFailureCopyWith<$Res> {
  __$$_UpdateFailureCopyWithImpl(
      _$_UpdateFailure _value, $Res Function(_$_UpdateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_UpdateFailure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as EventFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventFailureCopyWith<$Res> get failure {
    return $EventFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure(this.failure);

  @override
  final EventFailure failure;

  @override
  String toString() {
    return 'UpdateIsFavoriteState.updateFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateFailureCopyWith<_$_UpdateFailure> get copyWith =>
      __$$_UpdateFailureCopyWithImpl<_$_UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updateInProgress,
    required TResult Function() updateSuccess,
    required TResult Function(EventFailure failure) updateFailure,
  }) {
    return updateFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? updateInProgress,
    TResult? Function()? updateSuccess,
    TResult? Function(EventFailure failure)? updateFailure,
  }) {
    return updateFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updateInProgress,
    TResult Function()? updateSuccess,
    TResult Function(EventFailure failure)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateSuccess value) updateSuccess,
    required TResult Function(_UpdateFailure value) updateFailure,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UpdateInProgress value)? updateInProgress,
    TResult? Function(_UpdateSuccess value)? updateSuccess,
    TResult? Function(_UpdateFailure value)? updateFailure,
  }) {
    return updateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    TResult Function(_UpdateFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements UpdateIsFavoriteState {
  const factory _UpdateFailure(final EventFailure failure) = _$_UpdateFailure;

  EventFailure get failure;
  @JsonKey(ignore: true)
  _$$_UpdateFailureCopyWith<_$_UpdateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
