// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_stand_play_constraint_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LotteryStandPlayConstraintEntity _$LotteryStandPlayConstraintEntityFromJson(
    Map<String, dynamic> json) {
  return _LotteryStandPlayConstraintEntity.fromJson(json);
}

/// @nodoc
mixin _$LotteryStandPlayConstraintEntity {
  @JsonKey(name: "play_number")
  num get playNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "constraint_amount")
  num get constraintAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "constraint_max_amount")
  num get constraintMaxAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryStandPlayConstraintEntityCopyWith<LotteryStandPlayConstraintEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryStandPlayConstraintEntityCopyWith<$Res> {
  factory $LotteryStandPlayConstraintEntityCopyWith(
          LotteryStandPlayConstraintEntity value,
          $Res Function(LotteryStandPlayConstraintEntity) then) =
      _$LotteryStandPlayConstraintEntityCopyWithImpl<$Res,
          LotteryStandPlayConstraintEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "play_number") num playNumber,
      @JsonKey(name: "constraint_amount") num constraintAmount,
      @JsonKey(name: "constraint_max_amount") num constraintMaxAmount});
}

/// @nodoc
class _$LotteryStandPlayConstraintEntityCopyWithImpl<$Res,
        $Val extends LotteryStandPlayConstraintEntity>
    implements $LotteryStandPlayConstraintEntityCopyWith<$Res> {
  _$LotteryStandPlayConstraintEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playNumber = null,
    Object? constraintAmount = null,
    Object? constraintMaxAmount = null,
  }) {
    return _then(_value.copyWith(
      playNumber: null == playNumber
          ? _value.playNumber
          : playNumber // ignore: cast_nullable_to_non_nullable
              as num,
      constraintAmount: null == constraintAmount
          ? _value.constraintAmount
          : constraintAmount // ignore: cast_nullable_to_non_nullable
              as num,
      constraintMaxAmount: null == constraintMaxAmount
          ? _value.constraintMaxAmount
          : constraintMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryStandPlayConstraintEntityImplCopyWith<$Res>
    implements $LotteryStandPlayConstraintEntityCopyWith<$Res> {
  factory _$$LotteryStandPlayConstraintEntityImplCopyWith(
          _$LotteryStandPlayConstraintEntityImpl value,
          $Res Function(_$LotteryStandPlayConstraintEntityImpl) then) =
      __$$LotteryStandPlayConstraintEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "play_number") num playNumber,
      @JsonKey(name: "constraint_amount") num constraintAmount,
      @JsonKey(name: "constraint_max_amount") num constraintMaxAmount});
}

/// @nodoc
class __$$LotteryStandPlayConstraintEntityImplCopyWithImpl<$Res>
    extends _$LotteryStandPlayConstraintEntityCopyWithImpl<$Res,
        _$LotteryStandPlayConstraintEntityImpl>
    implements _$$LotteryStandPlayConstraintEntityImplCopyWith<$Res> {
  __$$LotteryStandPlayConstraintEntityImplCopyWithImpl(
      _$LotteryStandPlayConstraintEntityImpl _value,
      $Res Function(_$LotteryStandPlayConstraintEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playNumber = null,
    Object? constraintAmount = null,
    Object? constraintMaxAmount = null,
  }) {
    return _then(_$LotteryStandPlayConstraintEntityImpl(
      playNumber: null == playNumber
          ? _value.playNumber
          : playNumber // ignore: cast_nullable_to_non_nullable
              as num,
      constraintAmount: null == constraintAmount
          ? _value.constraintAmount
          : constraintAmount // ignore: cast_nullable_to_non_nullable
              as num,
      constraintMaxAmount: null == constraintMaxAmount
          ? _value.constraintMaxAmount
          : constraintMaxAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryStandPlayConstraintEntityImpl
    implements _LotteryStandPlayConstraintEntity {
  const _$LotteryStandPlayConstraintEntityImpl(
      {@JsonKey(name: "play_number") required this.playNumber,
      @JsonKey(name: "constraint_amount") required this.constraintAmount,
      @JsonKey(name: "constraint_max_amount")
      required this.constraintMaxAmount});

  factory _$LotteryStandPlayConstraintEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LotteryStandPlayConstraintEntityImplFromJson(json);

  @override
  @JsonKey(name: "play_number")
  final num playNumber;
  @override
  @JsonKey(name: "constraint_amount")
  final num constraintAmount;
  @override
  @JsonKey(name: "constraint_max_amount")
  final num constraintMaxAmount;

  @override
  String toString() {
    return 'LotteryStandPlayConstraintEntity(playNumber: $playNumber, constraintAmount: $constraintAmount, constraintMaxAmount: $constraintMaxAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryStandPlayConstraintEntityImpl &&
            (identical(other.playNumber, playNumber) ||
                other.playNumber == playNumber) &&
            (identical(other.constraintAmount, constraintAmount) ||
                other.constraintAmount == constraintAmount) &&
            (identical(other.constraintMaxAmount, constraintMaxAmount) ||
                other.constraintMaxAmount == constraintMaxAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, playNumber, constraintAmount, constraintMaxAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryStandPlayConstraintEntityImplCopyWith<
          _$LotteryStandPlayConstraintEntityImpl>
      get copyWith => __$$LotteryStandPlayConstraintEntityImplCopyWithImpl<
          _$LotteryStandPlayConstraintEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryStandPlayConstraintEntityImplToJson(
      this,
    );
  }
}

abstract class _LotteryStandPlayConstraintEntity
    implements LotteryStandPlayConstraintEntity {
  const factory _LotteryStandPlayConstraintEntity(
      {@JsonKey(name: "play_number") required final num playNumber,
      @JsonKey(name: "constraint_amount") required final num constraintAmount,
      @JsonKey(name: "constraint_max_amount")
      required final num
          constraintMaxAmount}) = _$LotteryStandPlayConstraintEntityImpl;

  factory _LotteryStandPlayConstraintEntity.fromJson(
          Map<String, dynamic> json) =
      _$LotteryStandPlayConstraintEntityImpl.fromJson;

  @override
  @JsonKey(name: "play_number")
  num get playNumber;
  @override
  @JsonKey(name: "constraint_amount")
  num get constraintAmount;
  @override
  @JsonKey(name: "constraint_max_amount")
  num get constraintMaxAmount;
  @override
  @JsonKey(ignore: true)
  _$$LotteryStandPlayConstraintEntityImplCopyWith<
          _$LotteryStandPlayConstraintEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
