// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rb_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RBState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RobotModel> rbModel) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RobotModel> rbModel)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RobotModel> rbModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RBStateInitial value) initial,
    required TResult Function(RBStateLoading value) loading,
    required TResult Function(RBStateSuccess value) success,
    required TResult Function(RBStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RBStateInitial value)? initial,
    TResult? Function(RBStateLoading value)? loading,
    TResult? Function(RBStateSuccess value)? success,
    TResult? Function(RBStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RBStateInitial value)? initial,
    TResult Function(RBStateLoading value)? loading,
    TResult Function(RBStateSuccess value)? success,
    TResult Function(RBStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RBStateCopyWith<$Res> {
  factory $RBStateCopyWith(RBState value, $Res Function(RBState) then) =
      _$RBStateCopyWithImpl<$Res, RBState>;
}

/// @nodoc
class _$RBStateCopyWithImpl<$Res, $Val extends RBState>
    implements $RBStateCopyWith<$Res> {
  _$RBStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RBStateInitialCopyWith<$Res> {
  factory _$$RBStateInitialCopyWith(
          _$RBStateInitial value, $Res Function(_$RBStateInitial) then) =
      __$$RBStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RBStateInitialCopyWithImpl<$Res>
    extends _$RBStateCopyWithImpl<$Res, _$RBStateInitial>
    implements _$$RBStateInitialCopyWith<$Res> {
  __$$RBStateInitialCopyWithImpl(
      _$RBStateInitial _value, $Res Function(_$RBStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RBStateInitial implements RBStateInitial {
  const _$RBStateInitial();

  @override
  String toString() {
    return 'RBState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RBStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RobotModel> rbModel) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RobotModel> rbModel)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RobotModel> rbModel)? success,
    TResult Function(String message)? error,
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
    required TResult Function(RBStateInitial value) initial,
    required TResult Function(RBStateLoading value) loading,
    required TResult Function(RBStateSuccess value) success,
    required TResult Function(RBStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RBStateInitial value)? initial,
    TResult? Function(RBStateLoading value)? loading,
    TResult? Function(RBStateSuccess value)? success,
    TResult? Function(RBStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RBStateInitial value)? initial,
    TResult Function(RBStateLoading value)? loading,
    TResult Function(RBStateSuccess value)? success,
    TResult Function(RBStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RBStateInitial implements RBState {
  const factory RBStateInitial() = _$RBStateInitial;
}

/// @nodoc
abstract class _$$RBStateLoadingCopyWith<$Res> {
  factory _$$RBStateLoadingCopyWith(
          _$RBStateLoading value, $Res Function(_$RBStateLoading) then) =
      __$$RBStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RBStateLoadingCopyWithImpl<$Res>
    extends _$RBStateCopyWithImpl<$Res, _$RBStateLoading>
    implements _$$RBStateLoadingCopyWith<$Res> {
  __$$RBStateLoadingCopyWithImpl(
      _$RBStateLoading _value, $Res Function(_$RBStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RBStateLoading implements RBStateLoading {
  const _$RBStateLoading();

  @override
  String toString() {
    return 'RBState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RBStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RobotModel> rbModel) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RobotModel> rbModel)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RobotModel> rbModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RBStateInitial value) initial,
    required TResult Function(RBStateLoading value) loading,
    required TResult Function(RBStateSuccess value) success,
    required TResult Function(RBStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RBStateInitial value)? initial,
    TResult? Function(RBStateLoading value)? loading,
    TResult? Function(RBStateSuccess value)? success,
    TResult? Function(RBStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RBStateInitial value)? initial,
    TResult Function(RBStateLoading value)? loading,
    TResult Function(RBStateSuccess value)? success,
    TResult Function(RBStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RBStateLoading implements RBState {
  const factory RBStateLoading() = _$RBStateLoading;
}

/// @nodoc
abstract class _$$RBStateSuccessCopyWith<$Res> {
  factory _$$RBStateSuccessCopyWith(
          _$RBStateSuccess value, $Res Function(_$RBStateSuccess) then) =
      __$$RBStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RobotModel> rbModel});
}

/// @nodoc
class __$$RBStateSuccessCopyWithImpl<$Res>
    extends _$RBStateCopyWithImpl<$Res, _$RBStateSuccess>
    implements _$$RBStateSuccessCopyWith<$Res> {
  __$$RBStateSuccessCopyWithImpl(
      _$RBStateSuccess _value, $Res Function(_$RBStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rbModel = null,
  }) {
    return _then(_$RBStateSuccess(
      null == rbModel
          ? _value._rbModel
          : rbModel // ignore: cast_nullable_to_non_nullable
              as List<RobotModel>,
    ));
  }
}

/// @nodoc

class _$RBStateSuccess implements RBStateSuccess {
  const _$RBStateSuccess(final List<RobotModel> rbModel) : _rbModel = rbModel;

  final List<RobotModel> _rbModel;
  @override
  List<RobotModel> get rbModel {
    if (_rbModel is EqualUnmodifiableListView) return _rbModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rbModel);
  }

  @override
  String toString() {
    return 'RBState.success(rbModel: $rbModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RBStateSuccess &&
            const DeepCollectionEquality().equals(other._rbModel, _rbModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rbModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RBStateSuccessCopyWith<_$RBStateSuccess> get copyWith =>
      __$$RBStateSuccessCopyWithImpl<_$RBStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RobotModel> rbModel) success,
    required TResult Function(String message) error,
  }) {
    return success(rbModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RobotModel> rbModel)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(rbModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RobotModel> rbModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(rbModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RBStateInitial value) initial,
    required TResult Function(RBStateLoading value) loading,
    required TResult Function(RBStateSuccess value) success,
    required TResult Function(RBStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RBStateInitial value)? initial,
    TResult? Function(RBStateLoading value)? loading,
    TResult? Function(RBStateSuccess value)? success,
    TResult? Function(RBStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RBStateInitial value)? initial,
    TResult Function(RBStateLoading value)? loading,
    TResult Function(RBStateSuccess value)? success,
    TResult Function(RBStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RBStateSuccess implements RBState {
  const factory RBStateSuccess(final List<RobotModel> rbModel) =
      _$RBStateSuccess;

  List<RobotModel> get rbModel;
  @JsonKey(ignore: true)
  _$$RBStateSuccessCopyWith<_$RBStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RBStateErrorCopyWith<$Res> {
  factory _$$RBStateErrorCopyWith(
          _$RBStateError value, $Res Function(_$RBStateError) then) =
      __$$RBStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RBStateErrorCopyWithImpl<$Res>
    extends _$RBStateCopyWithImpl<$Res, _$RBStateError>
    implements _$$RBStateErrorCopyWith<$Res> {
  __$$RBStateErrorCopyWithImpl(
      _$RBStateError _value, $Res Function(_$RBStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RBStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RBStateError implements RBStateError {
  const _$RBStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RBState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RBStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RBStateErrorCopyWith<_$RBStateError> get copyWith =>
      __$$RBStateErrorCopyWithImpl<_$RBStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RobotModel> rbModel) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RobotModel> rbModel)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RobotModel> rbModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RBStateInitial value) initial,
    required TResult Function(RBStateLoading value) loading,
    required TResult Function(RBStateSuccess value) success,
    required TResult Function(RBStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RBStateInitial value)? initial,
    TResult? Function(RBStateLoading value)? loading,
    TResult? Function(RBStateSuccess value)? success,
    TResult? Function(RBStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RBStateInitial value)? initial,
    TResult Function(RBStateLoading value)? loading,
    TResult Function(RBStateSuccess value)? success,
    TResult Function(RBStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RBStateError implements RBState {
  const factory RBStateError(final String message) = _$RBStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$RBStateErrorCopyWith<_$RBStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
