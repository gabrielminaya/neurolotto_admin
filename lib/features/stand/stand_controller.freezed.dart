// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stand_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StandControllerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<LotteryStandEntity> stands) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<LotteryStandEntity> stands)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<LotteryStandEntity> stands)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StandControllerInitial value) initial,
    required TResult Function(_StandControllerLoading value) loading,
    required TResult Function(_StandControllerFailure value) failure,
    required TResult Function(_StandControllerSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StandControllerInitial value)? initial,
    TResult? Function(_StandControllerLoading value)? loading,
    TResult? Function(_StandControllerFailure value)? failure,
    TResult? Function(_StandControllerSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StandControllerInitial value)? initial,
    TResult Function(_StandControllerLoading value)? loading,
    TResult Function(_StandControllerFailure value)? failure,
    TResult Function(_StandControllerSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandControllerStateCopyWith<$Res> {
  factory $StandControllerStateCopyWith(StandControllerState value,
          $Res Function(StandControllerState) then) =
      _$StandControllerStateCopyWithImpl<$Res, StandControllerState>;
}

/// @nodoc
class _$StandControllerStateCopyWithImpl<$Res,
        $Val extends StandControllerState>
    implements $StandControllerStateCopyWith<$Res> {
  _$StandControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StandControllerInitialImplCopyWith<$Res> {
  factory _$$StandControllerInitialImplCopyWith(
          _$StandControllerInitialImpl value,
          $Res Function(_$StandControllerInitialImpl) then) =
      __$$StandControllerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StandControllerInitialImplCopyWithImpl<$Res>
    extends _$StandControllerStateCopyWithImpl<$Res,
        _$StandControllerInitialImpl>
    implements _$$StandControllerInitialImplCopyWith<$Res> {
  __$$StandControllerInitialImplCopyWithImpl(
      _$StandControllerInitialImpl _value,
      $Res Function(_$StandControllerInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StandControllerInitialImpl
    with DiagnosticableTreeMixin
    implements _StandControllerInitial {
  const _$StandControllerInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StandControllerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StandControllerState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandControllerInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<LotteryStandEntity> stands) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<LotteryStandEntity> stands)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<LotteryStandEntity> stands)? success,
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
    required TResult Function(_StandControllerInitial value) initial,
    required TResult Function(_StandControllerLoading value) loading,
    required TResult Function(_StandControllerFailure value) failure,
    required TResult Function(_StandControllerSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StandControllerInitial value)? initial,
    TResult? Function(_StandControllerLoading value)? loading,
    TResult? Function(_StandControllerFailure value)? failure,
    TResult? Function(_StandControllerSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StandControllerInitial value)? initial,
    TResult Function(_StandControllerLoading value)? loading,
    TResult Function(_StandControllerFailure value)? failure,
    TResult Function(_StandControllerSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _StandControllerInitial implements StandControllerState {
  const factory _StandControllerInitial() = _$StandControllerInitialImpl;
}

/// @nodoc
abstract class _$$StandControllerLoadingImplCopyWith<$Res> {
  factory _$$StandControllerLoadingImplCopyWith(
          _$StandControllerLoadingImpl value,
          $Res Function(_$StandControllerLoadingImpl) then) =
      __$$StandControllerLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StandControllerLoadingImplCopyWithImpl<$Res>
    extends _$StandControllerStateCopyWithImpl<$Res,
        _$StandControllerLoadingImpl>
    implements _$$StandControllerLoadingImplCopyWith<$Res> {
  __$$StandControllerLoadingImplCopyWithImpl(
      _$StandControllerLoadingImpl _value,
      $Res Function(_$StandControllerLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StandControllerLoadingImpl
    with DiagnosticableTreeMixin
    implements _StandControllerLoading {
  const _$StandControllerLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StandControllerState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'StandControllerState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandControllerLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<LotteryStandEntity> stands) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<LotteryStandEntity> stands)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<LotteryStandEntity> stands)? success,
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
    required TResult Function(_StandControllerInitial value) initial,
    required TResult Function(_StandControllerLoading value) loading,
    required TResult Function(_StandControllerFailure value) failure,
    required TResult Function(_StandControllerSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StandControllerInitial value)? initial,
    TResult? Function(_StandControllerLoading value)? loading,
    TResult? Function(_StandControllerFailure value)? failure,
    TResult? Function(_StandControllerSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StandControllerInitial value)? initial,
    TResult Function(_StandControllerLoading value)? loading,
    TResult Function(_StandControllerFailure value)? failure,
    TResult Function(_StandControllerSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StandControllerLoading implements StandControllerState {
  const factory _StandControllerLoading() = _$StandControllerLoadingImpl;
}

/// @nodoc
abstract class _$$StandControllerFailureImplCopyWith<$Res> {
  factory _$$StandControllerFailureImplCopyWith(
          _$StandControllerFailureImpl value,
          $Res Function(_$StandControllerFailureImpl) then) =
      __$$StandControllerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StandControllerFailureImplCopyWithImpl<$Res>
    extends _$StandControllerStateCopyWithImpl<$Res,
        _$StandControllerFailureImpl>
    implements _$$StandControllerFailureImplCopyWith<$Res> {
  __$$StandControllerFailureImplCopyWithImpl(
      _$StandControllerFailureImpl _value,
      $Res Function(_$StandControllerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StandControllerFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StandControllerFailureImpl
    with DiagnosticableTreeMixin
    implements _StandControllerFailure {
  const _$StandControllerFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StandControllerState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StandControllerState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandControllerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandControllerFailureImplCopyWith<_$StandControllerFailureImpl>
      get copyWith => __$$StandControllerFailureImplCopyWithImpl<
          _$StandControllerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<LotteryStandEntity> stands) success,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<LotteryStandEntity> stands)? success,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<LotteryStandEntity> stands)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StandControllerInitial value) initial,
    required TResult Function(_StandControllerLoading value) loading,
    required TResult Function(_StandControllerFailure value) failure,
    required TResult Function(_StandControllerSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StandControllerInitial value)? initial,
    TResult? Function(_StandControllerLoading value)? loading,
    TResult? Function(_StandControllerFailure value)? failure,
    TResult? Function(_StandControllerSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StandControllerInitial value)? initial,
    TResult Function(_StandControllerLoading value)? loading,
    TResult Function(_StandControllerFailure value)? failure,
    TResult Function(_StandControllerSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _StandControllerFailure implements StandControllerState {
  const factory _StandControllerFailure(final String message) =
      _$StandControllerFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$StandControllerFailureImplCopyWith<_$StandControllerFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StandControllerSuccessImplCopyWith<$Res> {
  factory _$$StandControllerSuccessImplCopyWith(
          _$StandControllerSuccessImpl value,
          $Res Function(_$StandControllerSuccessImpl) then) =
      __$$StandControllerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LotteryStandEntity> stands});
}

/// @nodoc
class __$$StandControllerSuccessImplCopyWithImpl<$Res>
    extends _$StandControllerStateCopyWithImpl<$Res,
        _$StandControllerSuccessImpl>
    implements _$$StandControllerSuccessImplCopyWith<$Res> {
  __$$StandControllerSuccessImplCopyWithImpl(
      _$StandControllerSuccessImpl _value,
      $Res Function(_$StandControllerSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stands = null,
  }) {
    return _then(_$StandControllerSuccessImpl(
      null == stands
          ? _value._stands
          : stands // ignore: cast_nullable_to_non_nullable
              as List<LotteryStandEntity>,
    ));
  }
}

/// @nodoc

class _$StandControllerSuccessImpl
    with DiagnosticableTreeMixin
    implements _StandControllerSuccess {
  const _$StandControllerSuccessImpl(final List<LotteryStandEntity> stands)
      : _stands = stands;

  final List<LotteryStandEntity> _stands;
  @override
  List<LotteryStandEntity> get stands {
    if (_stands is EqualUnmodifiableListView) return _stands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stands);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StandControllerState.success(stands: $stands)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StandControllerState.success'))
      ..add(DiagnosticsProperty('stands', stands));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandControllerSuccessImpl &&
            const DeepCollectionEquality().equals(other._stands, _stands));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandControllerSuccessImplCopyWith<_$StandControllerSuccessImpl>
      get copyWith => __$$StandControllerSuccessImplCopyWithImpl<
          _$StandControllerSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) failure,
    required TResult Function(List<LotteryStandEntity> stands) success,
  }) {
    return success(stands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? failure,
    TResult? Function(List<LotteryStandEntity> stands)? success,
  }) {
    return success?.call(stands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? failure,
    TResult Function(List<LotteryStandEntity> stands)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(stands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StandControllerInitial value) initial,
    required TResult Function(_StandControllerLoading value) loading,
    required TResult Function(_StandControllerFailure value) failure,
    required TResult Function(_StandControllerSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StandControllerInitial value)? initial,
    TResult? Function(_StandControllerLoading value)? loading,
    TResult? Function(_StandControllerFailure value)? failure,
    TResult? Function(_StandControllerSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StandControllerInitial value)? initial,
    TResult Function(_StandControllerLoading value)? loading,
    TResult Function(_StandControllerFailure value)? failure,
    TResult Function(_StandControllerSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _StandControllerSuccess implements StandControllerState {
  const factory _StandControllerSuccess(final List<LotteryStandEntity> stands) =
      _$StandControllerSuccessImpl;

  List<LotteryStandEntity> get stands;
  @JsonKey(ignore: true)
  _$$StandControllerSuccessImplCopyWith<_$StandControllerSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
