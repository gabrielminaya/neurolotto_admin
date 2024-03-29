// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponseEntity<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T response) success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T response)? success,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T response)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseSuccess<T> value) success,
    required TResult Function(_ResponseFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseSuccess<T> value)? success,
    TResult? Function(_ResponseFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseSuccess<T> value)? success,
    TResult Function(_ResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseEntityCopyWith<T, $Res> {
  factory $ResponseEntityCopyWith(
          ResponseEntity<T> value, $Res Function(ResponseEntity<T>) then) =
      _$ResponseEntityCopyWithImpl<T, $Res, ResponseEntity<T>>;
}

/// @nodoc
class _$ResponseEntityCopyWithImpl<T, $Res, $Val extends ResponseEntity<T>>
    implements $ResponseEntityCopyWith<T, $Res> {
  _$ResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResponseSuccessImplCopyWith<T, $Res> {
  factory _$$ResponseSuccessImplCopyWith(_$ResponseSuccessImpl<T> value,
          $Res Function(_$ResponseSuccessImpl<T>) then) =
      __$$ResponseSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T response});
}

/// @nodoc
class __$$ResponseSuccessImplCopyWithImpl<T, $Res>
    extends _$ResponseEntityCopyWithImpl<T, $Res, _$ResponseSuccessImpl<T>>
    implements _$$ResponseSuccessImplCopyWith<T, $Res> {
  __$$ResponseSuccessImplCopyWithImpl(_$ResponseSuccessImpl<T> _value,
      $Res Function(_$ResponseSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ResponseSuccessImpl<T>(
      freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResponseSuccessImpl<T> implements _ResponseSuccess<T> {
  const _$ResponseSuccessImpl(this.response);

  @override
  final T response;

  @override
  String toString() {
    return 'ResponseEntity<$T>.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseSuccessImplCopyWith<T, _$ResponseSuccessImpl<T>> get copyWith =>
      __$$ResponseSuccessImplCopyWithImpl<T, _$ResponseSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T response) success,
    required TResult Function(String? message) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T response)? success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T response)? success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResponseSuccess<T> value) success,
    required TResult Function(_ResponseFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseSuccess<T> value)? success,
    TResult? Function(_ResponseFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseSuccess<T> value)? success,
    TResult Function(_ResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ResponseSuccess<T> implements ResponseEntity<T> {
  const factory _ResponseSuccess(final T response) = _$ResponseSuccessImpl<T>;

  T get response;
  @JsonKey(ignore: true)
  _$$ResponseSuccessImplCopyWith<T, _$ResponseSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResponseFailureImplCopyWith<T, $Res> {
  factory _$$ResponseFailureImplCopyWith(_$ResponseFailureImpl<T> value,
          $Res Function(_$ResponseFailureImpl<T>) then) =
      __$$ResponseFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ResponseFailureImplCopyWithImpl<T, $Res>
    extends _$ResponseEntityCopyWithImpl<T, $Res, _$ResponseFailureImpl<T>>
    implements _$$ResponseFailureImplCopyWith<T, $Res> {
  __$$ResponseFailureImplCopyWithImpl(_$ResponseFailureImpl<T> _value,
      $Res Function(_$ResponseFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ResponseFailureImpl<T>(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResponseFailureImpl<T> implements _ResponseFailure<T> {
  const _$ResponseFailureImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'ResponseEntity<$T>.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseFailureImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseFailureImplCopyWith<T, _$ResponseFailureImpl<T>> get copyWith =>
      __$$ResponseFailureImplCopyWithImpl<T, _$ResponseFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T response) success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T response)? success,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T response)? success,
    TResult Function(String? message)? failure,
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
    required TResult Function(_ResponseSuccess<T> value) success,
    required TResult Function(_ResponseFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResponseSuccess<T> value)? success,
    TResult? Function(_ResponseFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResponseSuccess<T> value)? success,
    TResult Function(_ResponseFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ResponseFailure<T> implements ResponseEntity<T> {
  const factory _ResponseFailure([final String? message]) =
      _$ResponseFailureImpl<T>;

  String? get message;
  @JsonKey(ignore: true)
  _$$ResponseFailureImplCopyWith<T, _$ResponseFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
