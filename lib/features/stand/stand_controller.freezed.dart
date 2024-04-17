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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StandControllerState {
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  bool get isFormLoading => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<GroupEntity> get groups => throw _privateConstructorUsedError;
  List<ConstraintLevelEntity> get constraints =>
      throw _privateConstructorUsedError;
  List<LotteryStandEntity> get stands => throw _privateConstructorUsedError;
  LotteryStandEntity? get currentStand => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StandControllerStateCopyWith<StandControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandControllerStateCopyWith<$Res> {
  factory $StandControllerStateCopyWith(StandControllerState value,
          $Res Function(StandControllerState) then) =
      _$StandControllerStateCopyWithImpl<$Res, StandControllerState>;
  @useResult
  $Res call(
      {bool isUpdateLoading,
      bool isFormLoading,
      bool isLoading,
      String? failureMessage,
      List<GroupEntity> groups,
      List<ConstraintLevelEntity> constraints,
      List<LotteryStandEntity> stands,
      LotteryStandEntity? currentStand});

  $LotteryStandEntityCopyWith<$Res>? get currentStand;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdateLoading = null,
    Object? isFormLoading = null,
    Object? isLoading = null,
    Object? failureMessage = freezed,
    Object? groups = null,
    Object? constraints = null,
    Object? stands = null,
    Object? currentStand = freezed,
  }) {
    return _then(_value.copyWith(
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormLoading: null == isFormLoading
          ? _value.isFormLoading
          : isFormLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      constraints: null == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as List<ConstraintLevelEntity>,
      stands: null == stands
          ? _value.stands
          : stands // ignore: cast_nullable_to_non_nullable
              as List<LotteryStandEntity>,
      currentStand: freezed == currentStand
          ? _value.currentStand
          : currentStand // ignore: cast_nullable_to_non_nullable
              as LotteryStandEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotteryStandEntityCopyWith<$Res>? get currentStand {
    if (_value.currentStand == null) {
      return null;
    }

    return $LotteryStandEntityCopyWith<$Res>(_value.currentStand!, (value) {
      return _then(_value.copyWith(currentStand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StandControllerStateImplCopyWith<$Res>
    implements $StandControllerStateCopyWith<$Res> {
  factory _$$StandControllerStateImplCopyWith(_$StandControllerStateImpl value,
          $Res Function(_$StandControllerStateImpl) then) =
      __$$StandControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isUpdateLoading,
      bool isFormLoading,
      bool isLoading,
      String? failureMessage,
      List<GroupEntity> groups,
      List<ConstraintLevelEntity> constraints,
      List<LotteryStandEntity> stands,
      LotteryStandEntity? currentStand});

  @override
  $LotteryStandEntityCopyWith<$Res>? get currentStand;
}

/// @nodoc
class __$$StandControllerStateImplCopyWithImpl<$Res>
    extends _$StandControllerStateCopyWithImpl<$Res, _$StandControllerStateImpl>
    implements _$$StandControllerStateImplCopyWith<$Res> {
  __$$StandControllerStateImplCopyWithImpl(_$StandControllerStateImpl _value,
      $Res Function(_$StandControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdateLoading = null,
    Object? isFormLoading = null,
    Object? isLoading = null,
    Object? failureMessage = freezed,
    Object? groups = null,
    Object? constraints = null,
    Object? stands = null,
    Object? currentStand = freezed,
  }) {
    return _then(_$StandControllerStateImpl(
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFormLoading: null == isFormLoading
          ? _value.isFormLoading
          : isFormLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureMessage: freezed == failureMessage
          ? _value.failureMessage
          : failureMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupEntity>,
      constraints: null == constraints
          ? _value._constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as List<ConstraintLevelEntity>,
      stands: null == stands
          ? _value._stands
          : stands // ignore: cast_nullable_to_non_nullable
              as List<LotteryStandEntity>,
      currentStand: freezed == currentStand
          ? _value.currentStand
          : currentStand // ignore: cast_nullable_to_non_nullable
              as LotteryStandEntity?,
    ));
  }
}

/// @nodoc

class _$StandControllerStateImpl
    with DiagnosticableTreeMixin
    implements _StandControllerState {
  const _$StandControllerStateImpl(
      {this.isUpdateLoading = false,
      this.isFormLoading = false,
      this.isLoading = false,
      this.failureMessage = null,
      final List<GroupEntity> groups = const [],
      final List<ConstraintLevelEntity> constraints = const [],
      final List<LotteryStandEntity> stands = const [],
      this.currentStand = null})
      : _groups = groups,
        _constraints = constraints,
        _stands = stands;

  @override
  @JsonKey()
  final bool isUpdateLoading;
  @override
  @JsonKey()
  final bool isFormLoading;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? failureMessage;
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

  final List<LotteryStandEntity> _stands;
  @override
  @JsonKey()
  List<LotteryStandEntity> get stands {
    if (_stands is EqualUnmodifiableListView) return _stands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stands);
  }

  @override
  @JsonKey()
  final LotteryStandEntity? currentStand;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StandControllerState(isUpdateLoading: $isUpdateLoading, isFormLoading: $isFormLoading, isLoading: $isLoading, failureMessage: $failureMessage, groups: $groups, constraints: $constraints, stands: $stands, currentStand: $currentStand)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StandControllerState'))
      ..add(DiagnosticsProperty('isUpdateLoading', isUpdateLoading))
      ..add(DiagnosticsProperty('isFormLoading', isFormLoading))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('groups', groups))
      ..add(DiagnosticsProperty('constraints', constraints))
      ..add(DiagnosticsProperty('stands', stands))
      ..add(DiagnosticsProperty('currentStand', currentStand));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StandControllerStateImpl &&
            (identical(other.isUpdateLoading, isUpdateLoading) ||
                other.isUpdateLoading == isUpdateLoading) &&
            (identical(other.isFormLoading, isFormLoading) ||
                other.isFormLoading == isFormLoading) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality()
                .equals(other._constraints, _constraints) &&
            const DeepCollectionEquality().equals(other._stands, _stands) &&
            (identical(other.currentStand, currentStand) ||
                other.currentStand == currentStand));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isUpdateLoading,
      isFormLoading,
      isLoading,
      failureMessage,
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_constraints),
      const DeepCollectionEquality().hash(_stands),
      currentStand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StandControllerStateImplCopyWith<_$StandControllerStateImpl>
      get copyWith =>
          __$$StandControllerStateImplCopyWithImpl<_$StandControllerStateImpl>(
              this, _$identity);
}

abstract class _StandControllerState implements StandControllerState {
  const factory _StandControllerState(
      {final bool isUpdateLoading,
      final bool isFormLoading,
      final bool isLoading,
      final String? failureMessage,
      final List<GroupEntity> groups,
      final List<ConstraintLevelEntity> constraints,
      final List<LotteryStandEntity> stands,
      final LotteryStandEntity? currentStand}) = _$StandControllerStateImpl;

  @override
  bool get isUpdateLoading;
  @override
  bool get isFormLoading;
  @override
  bool get isLoading;
  @override
  String? get failureMessage;
  @override
  List<GroupEntity> get groups;
  @override
  List<ConstraintLevelEntity> get constraints;
  @override
  List<LotteryStandEntity> get stands;
  @override
  LotteryStandEntity? get currentStand;
  @override
  @JsonKey(ignore: true)
  _$$StandControllerStateImplCopyWith<_$StandControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
