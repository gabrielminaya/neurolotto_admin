// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleDetailEntity _$SaleDetailEntityFromJson(Map<String, dynamic> json) {
  return _SaleDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$SaleDetailEntity {
  @JsonKey(name: "lottery_id")
  String get lotteryId => throw _privateConstructorUsedError;
  @JsonKey(name: "lottery_name")
  String get lotteryName => throw _privateConstructorUsedError;
  @JsonKey(name: "play_amount")
  num get playAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "winning_amount")
  num get winningAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleDetailEntityCopyWith<SaleDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleDetailEntityCopyWith<$Res> {
  factory $SaleDetailEntityCopyWith(
          SaleDetailEntity value, $Res Function(SaleDetailEntity) then) =
      _$SaleDetailEntityCopyWithImpl<$Res, SaleDetailEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "lottery_id") String lotteryId,
      @JsonKey(name: "lottery_name") String lotteryName,
      @JsonKey(name: "play_amount") num playAmount,
      @JsonKey(name: "winning_amount") num winningAmount});
}

/// @nodoc
class _$SaleDetailEntityCopyWithImpl<$Res, $Val extends SaleDetailEntity>
    implements $SaleDetailEntityCopyWith<$Res> {
  _$SaleDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryId = null,
    Object? lotteryName = null,
    Object? playAmount = null,
    Object? winningAmount = null,
  }) {
    return _then(_value.copyWith(
      lotteryId: null == lotteryId
          ? _value.lotteryId
          : lotteryId // ignore: cast_nullable_to_non_nullable
              as String,
      lotteryName: null == lotteryName
          ? _value.lotteryName
          : lotteryName // ignore: cast_nullable_to_non_nullable
              as String,
      playAmount: null == playAmount
          ? _value.playAmount
          : playAmount // ignore: cast_nullable_to_non_nullable
              as num,
      winningAmount: null == winningAmount
          ? _value.winningAmount
          : winningAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleDetailEntityImplCopyWith<$Res>
    implements $SaleDetailEntityCopyWith<$Res> {
  factory _$$SaleDetailEntityImplCopyWith(_$SaleDetailEntityImpl value,
          $Res Function(_$SaleDetailEntityImpl) then) =
      __$$SaleDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lottery_id") String lotteryId,
      @JsonKey(name: "lottery_name") String lotteryName,
      @JsonKey(name: "play_amount") num playAmount,
      @JsonKey(name: "winning_amount") num winningAmount});
}

/// @nodoc
class __$$SaleDetailEntityImplCopyWithImpl<$Res>
    extends _$SaleDetailEntityCopyWithImpl<$Res, _$SaleDetailEntityImpl>
    implements _$$SaleDetailEntityImplCopyWith<$Res> {
  __$$SaleDetailEntityImplCopyWithImpl(_$SaleDetailEntityImpl _value,
      $Res Function(_$SaleDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryId = null,
    Object? lotteryName = null,
    Object? playAmount = null,
    Object? winningAmount = null,
  }) {
    return _then(_$SaleDetailEntityImpl(
      lotteryId: null == lotteryId
          ? _value.lotteryId
          : lotteryId // ignore: cast_nullable_to_non_nullable
              as String,
      lotteryName: null == lotteryName
          ? _value.lotteryName
          : lotteryName // ignore: cast_nullable_to_non_nullable
              as String,
      playAmount: null == playAmount
          ? _value.playAmount
          : playAmount // ignore: cast_nullable_to_non_nullable
              as num,
      winningAmount: null == winningAmount
          ? _value.winningAmount
          : winningAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleDetailEntityImpl implements _SaleDetailEntity {
  const _$SaleDetailEntityImpl(
      {@JsonKey(name: "lottery_id") required this.lotteryId,
      @JsonKey(name: "lottery_name") required this.lotteryName,
      @JsonKey(name: "play_amount") required this.playAmount,
      @JsonKey(name: "winning_amount") required this.winningAmount});

  factory _$SaleDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleDetailEntityImplFromJson(json);

  @override
  @JsonKey(name: "lottery_id")
  final String lotteryId;
  @override
  @JsonKey(name: "lottery_name")
  final String lotteryName;
  @override
  @JsonKey(name: "play_amount")
  final num playAmount;
  @override
  @JsonKey(name: "winning_amount")
  final num winningAmount;

  @override
  String toString() {
    return 'SaleDetailEntity(lotteryId: $lotteryId, lotteryName: $lotteryName, playAmount: $playAmount, winningAmount: $winningAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleDetailEntityImpl &&
            (identical(other.lotteryId, lotteryId) ||
                other.lotteryId == lotteryId) &&
            (identical(other.lotteryName, lotteryName) ||
                other.lotteryName == lotteryName) &&
            (identical(other.playAmount, playAmount) ||
                other.playAmount == playAmount) &&
            (identical(other.winningAmount, winningAmount) ||
                other.winningAmount == winningAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lotteryId, lotteryName, playAmount, winningAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleDetailEntityImplCopyWith<_$SaleDetailEntityImpl> get copyWith =>
      __$$SaleDetailEntityImplCopyWithImpl<_$SaleDetailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _SaleDetailEntity implements SaleDetailEntity {
  const factory _SaleDetailEntity(
          {@JsonKey(name: "lottery_id") required final String lotteryId,
          @JsonKey(name: "lottery_name") required final String lotteryName,
          @JsonKey(name: "play_amount") required final num playAmount,
          @JsonKey(name: "winning_amount") required final num winningAmount}) =
      _$SaleDetailEntityImpl;

  factory _SaleDetailEntity.fromJson(Map<String, dynamic> json) =
      _$SaleDetailEntityImpl.fromJson;

  @override
  @JsonKey(name: "lottery_id")
  String get lotteryId;
  @override
  @JsonKey(name: "lottery_name")
  String get lotteryName;
  @override
  @JsonKey(name: "play_amount")
  num get playAmount;
  @override
  @JsonKey(name: "winning_amount")
  num get winningAmount;
  @override
  @JsonKey(ignore: true)
  _$$SaleDetailEntityImplCopyWith<_$SaleDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
