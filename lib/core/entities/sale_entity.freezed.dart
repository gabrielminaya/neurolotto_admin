// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaleEntity _$SaleEntityFromJson(Map<String, dynamic> json) {
  return _SaleEntity.fromJson(json);
}

/// @nodoc
mixin _$SaleEntity {
  @JsonKey(name: "lottery_stand_name")
  String get lotteryStandName => throw _privateConstructorUsedError;
  @JsonKey(name: "play_amount")
  num get playAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_won")
  num get amountWon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleEntityCopyWith<SaleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleEntityCopyWith<$Res> {
  factory $SaleEntityCopyWith(
          SaleEntity value, $Res Function(SaleEntity) then) =
      _$SaleEntityCopyWithImpl<$Res, SaleEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "lottery_stand_name") String lotteryStandName,
      @JsonKey(name: "play_amount") num playAmount,
      @JsonKey(name: "amount_won") num amountWon});
}

/// @nodoc
class _$SaleEntityCopyWithImpl<$Res, $Val extends SaleEntity>
    implements $SaleEntityCopyWith<$Res> {
  _$SaleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryStandName = null,
    Object? playAmount = null,
    Object? amountWon = null,
  }) {
    return _then(_value.copyWith(
      lotteryStandName: null == lotteryStandName
          ? _value.lotteryStandName
          : lotteryStandName // ignore: cast_nullable_to_non_nullable
              as String,
      playAmount: null == playAmount
          ? _value.playAmount
          : playAmount // ignore: cast_nullable_to_non_nullable
              as num,
      amountWon: null == amountWon
          ? _value.amountWon
          : amountWon // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaleEntityImplCopyWith<$Res>
    implements $SaleEntityCopyWith<$Res> {
  factory _$$SaleEntityImplCopyWith(
          _$SaleEntityImpl value, $Res Function(_$SaleEntityImpl) then) =
      __$$SaleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lottery_stand_name") String lotteryStandName,
      @JsonKey(name: "play_amount") num playAmount,
      @JsonKey(name: "amount_won") num amountWon});
}

/// @nodoc
class __$$SaleEntityImplCopyWithImpl<$Res>
    extends _$SaleEntityCopyWithImpl<$Res, _$SaleEntityImpl>
    implements _$$SaleEntityImplCopyWith<$Res> {
  __$$SaleEntityImplCopyWithImpl(
      _$SaleEntityImpl _value, $Res Function(_$SaleEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryStandName = null,
    Object? playAmount = null,
    Object? amountWon = null,
  }) {
    return _then(_$SaleEntityImpl(
      lotteryStandName: null == lotteryStandName
          ? _value.lotteryStandName
          : lotteryStandName // ignore: cast_nullable_to_non_nullable
              as String,
      playAmount: null == playAmount
          ? _value.playAmount
          : playAmount // ignore: cast_nullable_to_non_nullable
              as num,
      amountWon: null == amountWon
          ? _value.amountWon
          : amountWon // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaleEntityImpl implements _SaleEntity {
  const _$SaleEntityImpl(
      {@JsonKey(name: "lottery_stand_name") required this.lotteryStandName,
      @JsonKey(name: "play_amount") required this.playAmount,
      @JsonKey(name: "amount_won") required this.amountWon});

  factory _$SaleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaleEntityImplFromJson(json);

  @override
  @JsonKey(name: "lottery_stand_name")
  final String lotteryStandName;
  @override
  @JsonKey(name: "play_amount")
  final num playAmount;
  @override
  @JsonKey(name: "amount_won")
  final num amountWon;

  @override
  String toString() {
    return 'SaleEntity(lotteryStandName: $lotteryStandName, playAmount: $playAmount, amountWon: $amountWon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaleEntityImpl &&
            (identical(other.lotteryStandName, lotteryStandName) ||
                other.lotteryStandName == lotteryStandName) &&
            (identical(other.playAmount, playAmount) ||
                other.playAmount == playAmount) &&
            (identical(other.amountWon, amountWon) ||
                other.amountWon == amountWon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lotteryStandName, playAmount, amountWon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaleEntityImplCopyWith<_$SaleEntityImpl> get copyWith =>
      __$$SaleEntityImplCopyWithImpl<_$SaleEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaleEntityImplToJson(
      this,
    );
  }
}

abstract class _SaleEntity implements SaleEntity {
  const factory _SaleEntity(
          {@JsonKey(name: "lottery_stand_name")
          required final String lotteryStandName,
          @JsonKey(name: "play_amount") required final num playAmount,
          @JsonKey(name: "amount_won") required final num amountWon}) =
      _$SaleEntityImpl;

  factory _SaleEntity.fromJson(Map<String, dynamic> json) =
      _$SaleEntityImpl.fromJson;

  @override
  @JsonKey(name: "lottery_stand_name")
  String get lotteryStandName;
  @override
  @JsonKey(name: "play_amount")
  num get playAmount;
  @override
  @JsonKey(name: "amount_won")
  num get amountWon;
  @override
  @JsonKey(ignore: true)
  _$$SaleEntityImplCopyWith<_$SaleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
