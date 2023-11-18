// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  ConsortiumEntity? get consortium => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthControllerStateCopyWith<AuthControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthControllerStateCopyWith<$Res> {
  factory $AuthControllerStateCopyWith(
          AuthControllerState value, $Res Function(AuthControllerState) then) =
      _$AuthControllerStateCopyWithImpl<$Res, AuthControllerState>;
  @useResult
  $Res call({bool isLoading, User? user, ConsortiumEntity? consortium});

  $ConsortiumEntityCopyWith<$Res>? get consortium;
}

/// @nodoc
class _$AuthControllerStateCopyWithImpl<$Res, $Val extends AuthControllerState>
    implements $AuthControllerStateCopyWith<$Res> {
  _$AuthControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? consortium = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      consortium: freezed == consortium
          ? _value.consortium
          : consortium // ignore: cast_nullable_to_non_nullable
              as ConsortiumEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConsortiumEntityCopyWith<$Res>? get consortium {
    if (_value.consortium == null) {
      return null;
    }

    return $ConsortiumEntityCopyWith<$Res>(_value.consortium!, (value) {
      return _then(_value.copyWith(consortium: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthControllerStateImplCopyWith<$Res>
    implements $AuthControllerStateCopyWith<$Res> {
  factory _$$AuthControllerStateImplCopyWith(_$AuthControllerStateImpl value,
          $Res Function(_$AuthControllerStateImpl) then) =
      __$$AuthControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, User? user, ConsortiumEntity? consortium});

  @override
  $ConsortiumEntityCopyWith<$Res>? get consortium;
}

/// @nodoc
class __$$AuthControllerStateImplCopyWithImpl<$Res>
    extends _$AuthControllerStateCopyWithImpl<$Res, _$AuthControllerStateImpl>
    implements _$$AuthControllerStateImplCopyWith<$Res> {
  __$$AuthControllerStateImplCopyWithImpl(_$AuthControllerStateImpl _value,
      $Res Function(_$AuthControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? consortium = freezed,
  }) {
    return _then(_$AuthControllerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      consortium: freezed == consortium
          ? _value.consortium
          : consortium // ignore: cast_nullable_to_non_nullable
              as ConsortiumEntity?,
    ));
  }
}

/// @nodoc

class _$AuthControllerStateImpl
    with DiagnosticableTreeMixin
    implements _AuthControllerState {
  const _$AuthControllerStateImpl(
      {this.isLoading = false, this.user = null, this.consortium = null});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final User? user;
  @override
  @JsonKey()
  final ConsortiumEntity? consortium;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthControllerState(isLoading: $isLoading, user: $user, consortium: $consortium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('consortium', consortium));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.consortium, consortium) ||
                other.consortium == consortium));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user, consortium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthControllerStateImplCopyWith<_$AuthControllerStateImpl> get copyWith =>
      __$$AuthControllerStateImplCopyWithImpl<_$AuthControllerStateImpl>(
          this, _$identity);
}

abstract class _AuthControllerState implements AuthControllerState {
  const factory _AuthControllerState(
      {final bool isLoading,
      final User? user,
      final ConsortiumEntity? consortium}) = _$AuthControllerStateImpl;

  @override
  bool get isLoading;
  @override
  User? get user;
  @override
  ConsortiumEntity? get consortium;
  @override
  @JsonKey(ignore: true)
  _$$AuthControllerStateImplCopyWith<_$AuthControllerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
