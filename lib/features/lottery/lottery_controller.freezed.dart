// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LotteryControllerState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isActionLoading => throw _privateConstructorUsedError;
  String? get failureMessage => throw _privateConstructorUsedError;
  List<LotteryEntity> get lotteries => throw _privateConstructorUsedError;
  LotteryEntity? get selectedLottery => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LotteryControllerStateCopyWith<LotteryControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryControllerStateCopyWith<$Res> {
  factory $LotteryControllerStateCopyWith(LotteryControllerState value,
          $Res Function(LotteryControllerState) then) =
      _$LotteryControllerStateCopyWithImpl<$Res, LotteryControllerState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<LotteryEntity> lotteries,
      LotteryEntity? selectedLottery});

  $LotteryEntityCopyWith<$Res>? get selectedLottery;
}

/// @nodoc
class _$LotteryControllerStateCopyWithImpl<$Res,
        $Val extends LotteryControllerState>
    implements $LotteryControllerStateCopyWith<$Res> {
  _$LotteryControllerStateCopyWithImpl(this._value, this._then);

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
    Object? lotteries = null,
    Object? selectedLottery = freezed,
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
      lotteries: null == lotteries
          ? _value.lotteries
          : lotteries // ignore: cast_nullable_to_non_nullable
              as List<LotteryEntity>,
      selectedLottery: freezed == selectedLottery
          ? _value.selectedLottery
          : selectedLottery // ignore: cast_nullable_to_non_nullable
              as LotteryEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotteryEntityCopyWith<$Res>? get selectedLottery {
    if (_value.selectedLottery == null) {
      return null;
    }

    return $LotteryEntityCopyWith<$Res>(_value.selectedLottery!, (value) {
      return _then(_value.copyWith(selectedLottery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotteryControllerStateImplCopyWith<$Res>
    implements $LotteryControllerStateCopyWith<$Res> {
  factory _$$LotteryControllerStateImplCopyWith(
          _$LotteryControllerStateImpl value,
          $Res Function(_$LotteryControllerStateImpl) then) =
      __$$LotteryControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isActionLoading,
      String? failureMessage,
      List<LotteryEntity> lotteries,
      LotteryEntity? selectedLottery});

  @override
  $LotteryEntityCopyWith<$Res>? get selectedLottery;
}

/// @nodoc
class __$$LotteryControllerStateImplCopyWithImpl<$Res>
    extends _$LotteryControllerStateCopyWithImpl<$Res,
        _$LotteryControllerStateImpl>
    implements _$$LotteryControllerStateImplCopyWith<$Res> {
  __$$LotteryControllerStateImplCopyWithImpl(
      _$LotteryControllerStateImpl _value,
      $Res Function(_$LotteryControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isActionLoading = null,
    Object? failureMessage = freezed,
    Object? lotteries = null,
    Object? selectedLottery = freezed,
  }) {
    return _then(_$LotteryControllerStateImpl(
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
      lotteries: null == lotteries
          ? _value._lotteries
          : lotteries // ignore: cast_nullable_to_non_nullable
              as List<LotteryEntity>,
      selectedLottery: freezed == selectedLottery
          ? _value.selectedLottery
          : selectedLottery // ignore: cast_nullable_to_non_nullable
              as LotteryEntity?,
    ));
  }
}

/// @nodoc

class _$LotteryControllerStateImpl implements _LotteryControllerState {
  const _$LotteryControllerStateImpl(
      {this.isLoading = false,
      this.isActionLoading = false,
      this.failureMessage = null,
      final List<LotteryEntity> lotteries = const [],
      this.selectedLottery = null})
      : _lotteries = lotteries;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isActionLoading;
  @override
  @JsonKey()
  final String? failureMessage;
  final List<LotteryEntity> _lotteries;
  @override
  @JsonKey()
  List<LotteryEntity> get lotteries {
    if (_lotteries is EqualUnmodifiableListView) return _lotteries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lotteries);
  }

  @override
  @JsonKey()
  final LotteryEntity? selectedLottery;

  @override
  String toString() {
    return 'LotteryControllerState(isLoading: $isLoading, isActionLoading: $isActionLoading, failureMessage: $failureMessage, lotteries: $lotteries, selectedLottery: $selectedLottery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryControllerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isActionLoading, isActionLoading) ||
                other.isActionLoading == isActionLoading) &&
            (identical(other.failureMessage, failureMessage) ||
                other.failureMessage == failureMessage) &&
            const DeepCollectionEquality()
                .equals(other._lotteries, _lotteries) &&
            (identical(other.selectedLottery, selectedLottery) ||
                other.selectedLottery == selectedLottery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isActionLoading,
      failureMessage,
      const DeepCollectionEquality().hash(_lotteries),
      selectedLottery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryControllerStateImplCopyWith<_$LotteryControllerStateImpl>
      get copyWith => __$$LotteryControllerStateImplCopyWithImpl<
          _$LotteryControllerStateImpl>(this, _$identity);
}

abstract class _LotteryControllerState implements LotteryControllerState {
  const factory _LotteryControllerState(
      {final bool isLoading,
      final bool isActionLoading,
      final String? failureMessage,
      final List<LotteryEntity> lotteries,
      final LotteryEntity? selectedLottery}) = _$LotteryControllerStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isActionLoading;
  @override
  String? get failureMessage;
  @override
  List<LotteryEntity> get lotteries;
  @override
  LotteryEntity? get selectedLottery;
  @override
  @JsonKey(ignore: true)
  _$$LotteryControllerStateImplCopyWith<_$LotteryControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
