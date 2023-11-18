// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stand_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StandFormControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  List<GroupEntity> get groups => throw _privateConstructorUsedError;
  List<ConstraintLevelEntity> get constraints =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StandFormControllerStateCopyWith<StandFormControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandFormControllerStateCopyWith<$Res> {
  factory $StandFormControllerStateCopyWith(StandFormControllerState value,
          $Res Function(StandFormControllerState) then) =
      _$StandFormControllerStateCopyWithImpl<$Res, StandFormControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isUpdateLoading,
      List<GroupEntity> groups,
      List<ConstraintLevelEntity> constraints});
}

/// @nodoc
class _$StandFormControllerStateCopyWithImpl<$Res,
        $Val extends StandFormControllerState>
    implements $StandFormControllerStateCopyWith<$Res> {
  _$StandFormControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUpdateLoading = null,
    Object? groups = null,
    Object? constraints = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      constraints: null == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as List<ConstraintLevelEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StandFormControllerStateImplCopyWith<$Res>
    implements $StandFormControllerStateCopyWith<$Res> {
  factory _$$StandFormControllerStateImplCopyWith(
          _$StandFormControllerStateImpl value,
          $Res Function(_$StandFormControllerStateImpl) then) =
      __$$StandFormControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isUpdateLoading,
      List<GroupEntity> groups,
      List<ConstraintLevelEntity> constraints});
}

/// @nodoc
class __$$StandFormControllerStateImplCopyWithImpl<$Res>
    extends _$StandFormControllerStateCopyWithImpl<$Res,
        _$StandFormControllerStateImpl>
    implements _$$StandFormControllerStateImplCopyWith<$Res> {
  __$$StandFormControllerStateImplCopyWithImpl(
      _$StandFormControllerStateImpl _value,
      $Res Function(_$StandFormControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isUpdateLoading = null,
    Object? groups = null,
    Object? constraints = null,
  }) {
    return _then(_$StandFormControllerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      constraints: null == constraints
          ? _value._constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as List<ConstraintLevelEntity>,
    ));
  }
}

/// @nodoc

class _$StandFormControllerStateImpl implements _StandFormControllerState {
  const _$StandFormControllerStateImpl(
      {this.isLoading = false,
      this.isUpdateLoading = false,
      final List<GroupEntity> groups = const [],
      final List<ConstraintLevelEntity> constraints = const []})
      : _groups = groups,
        _constraints = constraints;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isUpdateLoading;
  final List<GroupEntity> _groups;
  @override
  @JsonKey()
  List<GroupEntity> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  final List<ConstraintLevelEntity> _constraints;
  @override
  @JsonKey()
  List<ConstraintLevelEntity> get constraints {
    if (_constraints is EqualUnmodifiableListView) return _constraints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_constraints);
  }

  @override
  String toString() {
    return 'StandFormControllerState(isLoading: $isLoading, isUpdateLoading: $isUpdateLoading, groups: $groups, constraints: $constraints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandFormControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isUpdateLoading, isUpdateLoading) ||
                other.isUpdateLoading == isUpdateLoading) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality()
                .equals(other._constraints, _constraints));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isUpdateLoading,
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_constraints));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandFormControllerStateImplCopyWith<_$StandFormControllerStateImpl>
      get copyWith => __$$StandFormControllerStateImplCopyWithImpl<
          _$StandFormControllerStateImpl>(this, _$identity);
}

abstract class _StandFormControllerState implements StandFormControllerState {
  const factory _StandFormControllerState(
          {final bool isLoading,
          final bool isUpdateLoading,
          final List<GroupEntity> groups,
          final List<ConstraintLevelEntity> constraints}) =
      _$StandFormControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isUpdateLoading;
  @override
  List<GroupEntity> get groups;
  @override
  List<ConstraintLevelEntity> get constraints;
  @override
  @JsonKey(ignore: true)
  _$$StandFormControllerStateImplCopyWith<_$StandFormControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
