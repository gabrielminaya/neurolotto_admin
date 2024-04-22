// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_number_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotNumberEntity _$HotNumberEntityFromJson(Map<String, dynamic> json) {
  return _HotNumberEntity.fromJson(json);
}

/// @nodoc
mixin _$HotNumberEntity {
  @JsonKey(name: "play_type_name")
  String get lotteryName => throw _privateConstructorUsedError;
  @JsonKey(name: "play_number")
  String get playNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "total_plays")
  num get playQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "total_amount")
  num get totalAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotNumberEntityCopyWith<HotNumberEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotNumberEntityCopyWith<$Res> {
  factory $HotNumberEntityCopyWith(
          HotNumberEntity value, $Res Function(HotNumberEntity) then) =
      _$HotNumberEntityCopyWithImpl<$Res, HotNumberEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "play_type_name") String lotteryName,
      @JsonKey(name: "play_number") String playNumber,
      @JsonKey(name: "total_plays") num playQuantity,
      @JsonKey(name: "total_amount") num totalAmount});
}

/// @nodoc
class _$HotNumberEntityCopyWithImpl<$Res, $Val extends HotNumberEntity>
    implements $HotNumberEntityCopyWith<$Res> {
  _$HotNumberEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryName = null,
    Object? playNumber = null,
    Object? playQuantity = null,
    Object? totalAmount = null,
  }) {
    return _then(_value.copyWith(
      lotteryName: null == lotteryName
          ? _value.lotteryName
          : lotteryName // ignore: cast_nullable_to_non_nullable
              as String,
      playNumber: null == playNumber
          ? _value.playNumber
          : playNumber // ignore: cast_nullable_to_non_nullable
              as String,
      playQuantity: null == playQuantity
          ? _value.playQuantity
          : playQuantity // ignore: cast_nullable_to_non_nullable
              as num,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotNumberEntityImplCopyWith<$Res>
    implements $HotNumberEntityCopyWith<$Res> {
  factory _$$HotNumberEntityImplCopyWith(_$HotNumberEntityImpl value,
          $Res Function(_$HotNumberEntityImpl) then) =
      __$$HotNumberEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "play_type_name") String lotteryName,
      @JsonKey(name: "play_number") String playNumber,
      @JsonKey(name: "total_plays") num playQuantity,
      @JsonKey(name: "total_amount") num totalAmount});
}

/// @nodoc
class __$$HotNumberEntityImplCopyWithImpl<$Res>
    extends _$HotNumberEntityCopyWithImpl<$Res, _$HotNumberEntityImpl>
    implements _$$HotNumberEntityImplCopyWith<$Res> {
  __$$HotNumberEntityImplCopyWithImpl(
      _$HotNumberEntityImpl _value, $Res Function(_$HotNumberEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryName = null,
    Object? playNumber = null,
    Object? playQuantity = null,
    Object? totalAmount = null,
  }) {
    return _then(_$HotNumberEntityImpl(
      lotteryName: null == lotteryName
          ? _value.lotteryName
          : lotteryName // ignore: cast_nullable_to_non_nullable
              as String,
      playNumber: null == playNumber
          ? _value.playNumber
          : playNumber // ignore: cast_nullable_to_non_nullable
              as String,
      playQuantity: null == playQuantity
          ? _value.playQuantity
          : playQuantity // ignore: cast_nullable_to_non_nullable
              as num,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotNumberEntityImpl implements _HotNumberEntity {
  const _$HotNumberEntityImpl(
      {@JsonKey(name: "play_type_name") required this.lotteryName,
      @JsonKey(name: "play_number") required this.playNumber,
      @JsonKey(name: "total_plays") required this.playQuantity,
      @JsonKey(name: "total_amount") required this.totalAmount});

  factory _$HotNumberEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotNumberEntityImplFromJson(json);

  @override
  @JsonKey(name: "play_type_name")
  final String lotteryName;
  @override
  @JsonKey(name: "play_number")
  final String playNumber;
  @override
  @JsonKey(name: "total_plays")
  final num playQuantity;
  @override
  @JsonKey(name: "total_amount")
  final num totalAmount;

  @override
  String toString() {
    return 'HotNumberEntity(lotteryName: $lotteryName, playNumber: $playNumber, playQuantity: $playQuantity, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotNumberEntityImpl &&
            (identical(other.lotteryName, lotteryName) ||
                other.lotteryName == lotteryName) &&
            (identical(other.playNumber, playNumber) ||
                other.playNumber == playNumber) &&
            (identical(other.playQuantity, playQuantity) ||
                other.playQuantity == playQuantity) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lotteryName, playNumber, playQuantity, totalAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotNumberEntityImplCopyWith<_$HotNumberEntityImpl> get copyWith =>
      __$$HotNumberEntityImplCopyWithImpl<_$HotNumberEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotNumberEntityImplToJson(
      this,
    );
  }
}

abstract class _HotNumberEntity implements HotNumberEntity {
  const factory _HotNumberEntity(
          {@JsonKey(name: "play_type_name") required final String lotteryName,
          @JsonKey(name: "play_number") required final String playNumber,
          @JsonKey(name: "total_plays") required final num playQuantity,
          @JsonKey(name: "total_amount") required final num totalAmount}) =
      _$HotNumberEntityImpl;

  factory _HotNumberEntity.fromJson(Map<String, dynamic> json) =
      _$HotNumberEntityImpl.fromJson;

  @override
  @JsonKey(name: "play_type_name")
  String get lotteryName;
  @override
  @JsonKey(name: "play_number")
  String get playNumber;
  @override
  @JsonKey(name: "total_plays")
  num get playQuantity;
  @override
  @JsonKey(name: "total_amount")
  num get totalAmount;
  @override
  @JsonKey(ignore: true)
  _$$HotNumberEntityImplCopyWith<_$HotNumberEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
