// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LotteryResultEntity _$LotteryResultEntityFromJson(Map<String, dynamic> json) {
  return _LotteryResultEntity.fromJson(json);
}

/// @nodoc
mixin _$LotteryResultEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "lotteries")
  LotteryEntity get lottery => throw _privateConstructorUsedError;
  @JsonKey(name: "play_date")
  DateTime get playDate => throw _privateConstructorUsedError;
  @JsonKey(name: "first_number")
  num get firstPrizeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "second_number")
  num get secondPrizeNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "third_number")
  num get thirdPrizeNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryResultEntityCopyWith<LotteryResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryResultEntityCopyWith<$Res> {
  factory $LotteryResultEntityCopyWith(
          LotteryResultEntity value, $Res Function(LotteryResultEntity) then) =
      _$LotteryResultEntityCopyWithImpl<$Res, LotteryResultEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "lotteries") LotteryEntity lottery,
      @JsonKey(name: "play_date") DateTime playDate,
      @JsonKey(name: "first_number") num firstPrizeNumber,
      @JsonKey(name: "second_number") num secondPrizeNumber,
      @JsonKey(name: "third_number") num thirdPrizeNumber});

  $LotteryEntityCopyWith<$Res> get lottery;
}

/// @nodoc
class _$LotteryResultEntityCopyWithImpl<$Res, $Val extends LotteryResultEntity>
    implements $LotteryResultEntityCopyWith<$Res> {
  _$LotteryResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lottery = null,
    Object? playDate = null,
    Object? firstPrizeNumber = null,
    Object? secondPrizeNumber = null,
    Object? thirdPrizeNumber = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lottery: null == lottery
          ? _value.lottery
          : lottery // ignore: cast_nullable_to_non_nullable
              as LotteryEntity,
      playDate: null == playDate
          ? _value.playDate
          : playDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstPrizeNumber: null == firstPrizeNumber
          ? _value.firstPrizeNumber
          : firstPrizeNumber // ignore: cast_nullable_to_non_nullable
              as num,
      secondPrizeNumber: null == secondPrizeNumber
          ? _value.secondPrizeNumber
          : secondPrizeNumber // ignore: cast_nullable_to_non_nullable
              as num,
      thirdPrizeNumber: null == thirdPrizeNumber
          ? _value.thirdPrizeNumber
          : thirdPrizeNumber // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotteryEntityCopyWith<$Res> get lottery {
    return $LotteryEntityCopyWith<$Res>(_value.lottery, (value) {
      return _then(_value.copyWith(lottery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotteryResultEntityImplCopyWith<$Res>
    implements $LotteryResultEntityCopyWith<$Res> {
  factory _$$LotteryResultEntityImplCopyWith(_$LotteryResultEntityImpl value,
          $Res Function(_$LotteryResultEntityImpl) then) =
      __$$LotteryResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "lotteries") LotteryEntity lottery,
      @JsonKey(name: "play_date") DateTime playDate,
      @JsonKey(name: "first_number") num firstPrizeNumber,
      @JsonKey(name: "second_number") num secondPrizeNumber,
      @JsonKey(name: "third_number") num thirdPrizeNumber});

  @override
  $LotteryEntityCopyWith<$Res> get lottery;
}

/// @nodoc
class __$$LotteryResultEntityImplCopyWithImpl<$Res>
    extends _$LotteryResultEntityCopyWithImpl<$Res, _$LotteryResultEntityImpl>
    implements _$$LotteryResultEntityImplCopyWith<$Res> {
  __$$LotteryResultEntityImplCopyWithImpl(_$LotteryResultEntityImpl _value,
      $Res Function(_$LotteryResultEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lottery = null,
    Object? playDate = null,
    Object? firstPrizeNumber = null,
    Object? secondPrizeNumber = null,
    Object? thirdPrizeNumber = null,
  }) {
    return _then(_$LotteryResultEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lottery: null == lottery
          ? _value.lottery
          : lottery // ignore: cast_nullable_to_non_nullable
              as LotteryEntity,
      playDate: null == playDate
          ? _value.playDate
          : playDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      firstPrizeNumber: null == firstPrizeNumber
          ? _value.firstPrizeNumber
          : firstPrizeNumber // ignore: cast_nullable_to_non_nullable
              as num,
      secondPrizeNumber: null == secondPrizeNumber
          ? _value.secondPrizeNumber
          : secondPrizeNumber // ignore: cast_nullable_to_non_nullable
              as num,
      thirdPrizeNumber: null == thirdPrizeNumber
          ? _value.thirdPrizeNumber
          : thirdPrizeNumber // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryResultEntityImpl implements _LotteryResultEntity {
  const _$LotteryResultEntityImpl(
      {required this.id,
      @JsonKey(name: "lotteries") required this.lottery,
      @JsonKey(name: "play_date") required this.playDate,
      @JsonKey(name: "first_number") required this.firstPrizeNumber,
      @JsonKey(name: "second_number") required this.secondPrizeNumber,
      @JsonKey(name: "third_number") required this.thirdPrizeNumber});

  factory _$LotteryResultEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryResultEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "lotteries")
  final LotteryEntity lottery;
  @override
  @JsonKey(name: "play_date")
  final DateTime playDate;
  @override
  @JsonKey(name: "first_number")
  final num firstPrizeNumber;
  @override
  @JsonKey(name: "second_number")
  final num secondPrizeNumber;
  @override
  @JsonKey(name: "third_number")
  final num thirdPrizeNumber;

  @override
  String toString() {
    return 'LotteryResultEntity(id: $id, lottery: $lottery, playDate: $playDate, firstPrizeNumber: $firstPrizeNumber, secondPrizeNumber: $secondPrizeNumber, thirdPrizeNumber: $thirdPrizeNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryResultEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lottery, lottery) || other.lottery == lottery) &&
            (identical(other.playDate, playDate) ||
                other.playDate == playDate) &&
            (identical(other.firstPrizeNumber, firstPrizeNumber) ||
                other.firstPrizeNumber == firstPrizeNumber) &&
            (identical(other.secondPrizeNumber, secondPrizeNumber) ||
                other.secondPrizeNumber == secondPrizeNumber) &&
            (identical(other.thirdPrizeNumber, thirdPrizeNumber) ||
                other.thirdPrizeNumber == thirdPrizeNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, lottery, playDate,
      firstPrizeNumber, secondPrizeNumber, thirdPrizeNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryResultEntityImplCopyWith<_$LotteryResultEntityImpl> get copyWith =>
      __$$LotteryResultEntityImplCopyWithImpl<_$LotteryResultEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryResultEntityImplToJson(
      this,
    );
  }
}

abstract class _LotteryResultEntity implements LotteryResultEntity {
  const factory _LotteryResultEntity(
          {required final String id,
          @JsonKey(name: "lotteries") required final LotteryEntity lottery,
          @JsonKey(name: "play_date") required final DateTime playDate,
          @JsonKey(name: "first_number") required final num firstPrizeNumber,
          @JsonKey(name: "second_number") required final num secondPrizeNumber,
          @JsonKey(name: "third_number") required final num thirdPrizeNumber}) =
      _$LotteryResultEntityImpl;

  factory _LotteryResultEntity.fromJson(Map<String, dynamic> json) =
      _$LotteryResultEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "lotteries")
  LotteryEntity get lottery;
  @override
  @JsonKey(name: "play_date")
  DateTime get playDate;
  @override
  @JsonKey(name: "first_number")
  num get firstPrizeNumber;
  @override
  @JsonKey(name: "second_number")
  num get secondPrizeNumber;
  @override
  @JsonKey(name: "third_number")
  num get thirdPrizeNumber;
  @override
  @JsonKey(ignore: true)
  _$$LotteryResultEntityImplCopyWith<_$LotteryResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
