// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_schedule_date_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LotteryScheduleDateControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isActionLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<LotteryScheduleDateEntity> get lotteryScheduleDates =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LotteryScheduleDateControllerStateCopyWith<
          LotteryScheduleDateControllerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryScheduleDateControllerStateCopyWith<$Res> {
  factory $LotteryScheduleDateControllerStateCopyWith(
          LotteryScheduleDateControllerState value,
          $Res Function(LotteryScheduleDateControllerState) then) =
      _$LotteryScheduleDateControllerStateCopyWithImpl<$Res,
          LotteryScheduleDateControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<LotteryScheduleDateEntity> lotteryScheduleDates});
}

/// @nodoc
class _$LotteryScheduleDateControllerStateCopyWithImpl<$Res,
        $Val extends LotteryScheduleDateControllerState>
    implements $LotteryScheduleDateControllerStateCopyWith<$Res> {
  _$LotteryScheduleDateControllerStateCopyWithImpl(this._value, this._then);

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
    Object? lotteryScheduleDates = null,
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
      lotteryScheduleDates: null == lotteryScheduleDates
          ? _value.lotteryScheduleDates
          : lotteryScheduleDates // ignore: cast_nullable_to_non_nullable
              as List<LotteryScheduleDateEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryScheduleDateControllerStateImplCopyWith<$Res>
    implements $LotteryScheduleDateControllerStateCopyWith<$Res> {
  factory _$$LotteryScheduleDateControllerStateImplCopyWith(
          _$LotteryScheduleDateControllerStateImpl value,
          $Res Function(_$LotteryScheduleDateControllerStateImpl) then) =
      __$$LotteryScheduleDateControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<LotteryScheduleDateEntity> lotteryScheduleDates});
}

/// @nodoc
class __$$LotteryScheduleDateControllerStateImplCopyWithImpl<$Res>
    extends _$LotteryScheduleDateControllerStateCopyWithImpl<$Res,
        _$LotteryScheduleDateControllerStateImpl>
    implements _$$LotteryScheduleDateControllerStateImplCopyWith<$Res> {
  __$$LotteryScheduleDateControllerStateImplCopyWithImpl(
      _$LotteryScheduleDateControllerStateImpl _value,
      $Res Function(_$LotteryScheduleDateControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? failureMessage = freezed,
    Object? lotteryScheduleDates = null,
  }) {
    return _then(_$LotteryScheduleDateControllerStateImpl(
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
      lotteryScheduleDates: null == lotteryScheduleDates
          ? _value._lotteryScheduleDates
          : lotteryScheduleDates // ignore: cast_nullable_to_non_nullable
              as List<LotteryScheduleDateEntity>,
    ));
  }
}

/// @nodoc

class _$LotteryScheduleDateControllerStateImpl
    with DiagnosticableTreeMixin
    implements _LotteryScheduleDateControllerState {
  const _$LotteryScheduleDateControllerStateImpl(
      {this.isLoading = false,
      this.isActionLoading = false,
      this.failureMessage = null,
      final List<LotteryScheduleDateEntity> lotteryScheduleDates = const []})
      : _lotteryScheduleDates = lotteryScheduleDates;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isActionLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<LotteryScheduleDateEntity> _lotteryScheduleDates;
  @override
  @JsonKey()
  List<LotteryScheduleDateEntity> get lotteryScheduleDates {
    if (_lotteryScheduleDates is EqualUnmodifiableListView)
      return _lotteryScheduleDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lotteryScheduleDates);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LotteryScheduleDateControllerState(isLoading: $isLoading, isActionLoading: $isActionLoading, failureMessage: $failureMessage, lotteryScheduleDates: $lotteryScheduleDates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LotteryScheduleDateControllerState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isActionLoading', isActionLoading))
      ..add(DiagnosticsProperty('failureMessage', failureMessage))
      ..add(DiagnosticsProperty('lotteryScheduleDates', lotteryScheduleDates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryScheduleDateControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isActionLoading, isActionLoading) ||
                other.isActionLoading == isActionLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality()
                .equals(other._lotteryScheduleDates, _lotteryScheduleDates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isActionLoading,
      failureMessage,
      const DeepCollectionEquality().hash(_lotteryScheduleDates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryScheduleDateControllerStateImplCopyWith<
          _$LotteryScheduleDateControllerStateImpl>
      get copyWith => __$$LotteryScheduleDateControllerStateImplCopyWithImpl<
          _$LotteryScheduleDateControllerStateImpl>(this, _$identity);
}

abstract class _LotteryScheduleDateControllerState
    implements LotteryScheduleDateControllerState {
  const factory _LotteryScheduleDateControllerState(
          {final bool isLoading,
          final bool isActionLoading,
          final String? failureMessage,
          final List<LotteryScheduleDateEntity> lotteryScheduleDates}) =
      _$LotteryScheduleDateControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isActionLoading;
  @override
  String? get failureMessage;
  @override
  List<LotteryScheduleDateEntity> get lotteryScheduleDates;
  @override
  @JsonKey(ignore: true)
  _$$LotteryScheduleDateControllerStateImplCopyWith<
          _$LotteryScheduleDateControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
