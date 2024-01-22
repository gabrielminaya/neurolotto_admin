// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_play_constraint_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupPlayConstraintControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isActionLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<GroupPlayConstraintEntity> get constraints =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupPlayConstraintControllerStateCopyWith<
          GroupPlayConstraintControllerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupPlayConstraintControllerStateCopyWith<$Res> {
  factory $GroupPlayConstraintControllerStateCopyWith(
          GroupPlayConstraintControllerState value,
          $Res Function(GroupPlayConstraintControllerState) then) =
      _$GroupPlayConstraintControllerStateCopyWithImpl<$Res,
          GroupPlayConstraintControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<GroupPlayConstraintEntity> constraints});
}

/// @nodoc
class _$GroupPlayConstraintControllerStateCopyWithImpl<$Res,
        $Val extends GroupPlayConstraintControllerState>
    implements $GroupPlayConstraintControllerStateCopyWith<$Res> {
  _$GroupPlayConstraintControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? failureMessage = freezed,
    Object? constraints = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionLoading: null == isActionLoading
          ? _value.isActionLoading
          : isActionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      constraints: null == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as List<GroupPlayConstraintEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupPlayConstraintControllerStateImplCopyWith<$Res>
    implements $GroupPlayConstraintControllerStateCopyWith<$Res> {
  factory _$$GroupPlayConstraintControllerStateImplCopyWith(
          _$GroupPlayConstraintControllerStateImpl value,
          $Res Function(_$GroupPlayConstraintControllerStateImpl) then) =
      __$$GroupPlayConstraintControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<GroupPlayConstraintEntity> constraints});
}

/// @nodoc
class __$$GroupPlayConstraintControllerStateImplCopyWithImpl<$Res>
    extends _$GroupPlayConstraintControllerStateCopyWithImpl<$Res,
        _$GroupPlayConstraintControllerStateImpl>
    implements _$$GroupPlayConstraintControllerStateImplCopyWith<$Res> {
  __$$GroupPlayConstraintControllerStateImplCopyWithImpl(
      _$GroupPlayConstraintControllerStateImpl _value,
      $Res Function(_$GroupPlayConstraintControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? failureMessage = freezed,
    Object? constraints = null,
  }) {
    return _then(_$GroupPlayConstraintControllerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isActionLoading: null == isActionLoading
          ? _value.isActionLoading
          : isActionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      constraints: null == constraints
          ? _value._constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as List<GroupPlayConstraintEntity>,
    ));
  }
}

/// @nodoc

class _$GroupPlayConstraintControllerStateImpl
    implements _GroupPlayConstraintControllerState {
  const _$GroupPlayConstraintControllerStateImpl(
      {this.isLoading = false,
      this.isActionLoading = false,
      this.failureMessage = null,
      final List<GroupPlayConstraintEntity> constraints = const []})
      : _constraints = constraints;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isActionLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<GroupPlayConstraintEntity> _constraints;
  @override
  @JsonKey()
  List<GroupPlayConstraintEntity> get constraints {
    if (_constraints is EqualUnmodifiableListView) return _constraints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_constraints);
  }

  @override
  String toString() {
    return 'GroupPlayConstraintControllerState(isLoading: $isLoading, isActionLoading: $isActionLoading, failureMessage: $failureMessage, constraints: $constraints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupPlayConstraintControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isActionLoading, isActionLoading) ||
                other.isActionLoading == isActionLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality()
                .equals(other._constraints, _constraints));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isActionLoading,
      failureMessage, const DeepCollectionEquality().hash(_constraints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupPlayConstraintControllerStateImplCopyWith<
          _$GroupPlayConstraintControllerStateImpl>
      get copyWith => __$$GroupPlayConstraintControllerStateImplCopyWithImpl<
          _$GroupPlayConstraintControllerStateImpl>(this, _$identity);
}

abstract class _GroupPlayConstraintControllerState
    implements GroupPlayConstraintControllerState {
  const factory _GroupPlayConstraintControllerState(
          {final bool isLoading,
          final bool isActionLoading,
          final String? failureMessage,
          final List<GroupPlayConstraintEntity> constraints}) =
      _$GroupPlayConstraintControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isActionLoading;
  @override
  String? get failureMessage;
  @override
  List<GroupPlayConstraintEntity> get constraints;
  @override
  @JsonKey(ignore: true)
  _$$GroupPlayConstraintControllerStateImplCopyWith<
          _$GroupPlayConstraintControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
