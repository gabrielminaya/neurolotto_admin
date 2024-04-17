// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_schedule_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LotteryScheduleControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isActionLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<LotteryScheduleEntity> get schedules =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LotteryScheduleControllerStateCopyWith<LotteryScheduleControllerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryScheduleControllerStateCopyWith<$Res> {
  factory $LotteryScheduleControllerStateCopyWith(
          LotteryScheduleControllerState value,
          $Res Function(LotteryScheduleControllerState) then) =
      _$LotteryScheduleControllerStateCopyWithImpl<$Res,
          LotteryScheduleControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<LotteryScheduleEntity> schedules});
}

/// @nodoc
class _$LotteryScheduleControllerStateCopyWithImpl<$Res,
        $Val extends LotteryScheduleControllerState>
    implements $LotteryScheduleControllerStateCopyWith<$Res> {
  _$LotteryScheduleControllerStateCopyWithImpl(this._value, this._then);

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
    Object? schedules = null,
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
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<LotteryScheduleEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryScheduleControllerStateImplCopyWith<$Res>
    implements $LotteryScheduleControllerStateCopyWith<$Res> {
  factory _$$LotteryScheduleControllerStateImplCopyWith(
          _$LotteryScheduleControllerStateImpl value,
          $Res Function(_$LotteryScheduleControllerStateImpl) then) =
      __$$LotteryScheduleControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<LotteryScheduleEntity> schedules});
}

/// @nodoc
class __$$LotteryScheduleControllerStateImplCopyWithImpl<$Res>
    extends _$LotteryScheduleControllerStateCopyWithImpl<$Res,
        _$LotteryScheduleControllerStateImpl>
    implements _$$LotteryScheduleControllerStateImplCopyWith<$Res> {
  __$$LotteryScheduleControllerStateImplCopyWithImpl(
      _$LotteryScheduleControllerStateImpl _value,
      $Res Function(_$LotteryScheduleControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? failureMessage = freezed,
    Object? schedules = null,
  }) {
    return _then(_$LotteryScheduleControllerStateImpl(
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
      schedules: null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<LotteryScheduleEntity>,
    ));
  }
}

/// @nodoc

class _$LotteryScheduleControllerStateImpl
    with DiagnosticableTreeMixin
    implements _LotteryScheduleControllerState {
  const _$LotteryScheduleControllerStateImpl(
      {this.isLoading = false,
      this.isActionLoading = false,
      this.failureMessage = null,
      final List<LotteryScheduleEntity> schedules = const []})
      : _schedules = schedules;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isActionLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<LotteryScheduleEntity> _schedules;
  @override
  @JsonKey()
  List<LotteryScheduleEntity> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LotteryScheduleControllerState(isLoading: $isLoading, isActionLoading: $isActionLoading, failureMessage: $failureMessage, schedules: $schedules)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LotteryScheduleControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isActionLoading', isActionLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('schedules', schedules));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryScheduleControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isActionLoading, isActionLoading) ||
                other.isActionLoading == isActionLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isActionLoading,
      failureMessage, const DeepCollectionEquality().hash(_schedules));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryScheduleControllerStateImplCopyWith<
          _$LotteryScheduleControllerStateImpl>
      get copyWith => __$$LotteryScheduleControllerStateImplCopyWithImpl<
          _$LotteryScheduleControllerStateImpl>(this, _$identity);
}

abstract class _LotteryScheduleControllerState
    implements LotteryScheduleControllerState {
  const factory _LotteryScheduleControllerState(
          {final bool isLoading,
          final bool isActionLoading,
          final String? failureMessage,
          final List<LotteryScheduleEntity> schedules}) =
      _$LotteryScheduleControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isActionLoading;
  @override
  String? get failureMessage;
  @override
  List<LotteryScheduleEntity> get schedules;
  @override
  @JsonKey(ignore: true)
  _$$LotteryScheduleControllerStateImplCopyWith<
          _$LotteryScheduleControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
