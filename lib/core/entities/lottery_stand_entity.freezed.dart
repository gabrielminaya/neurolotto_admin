// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_stand_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LotteryStandEntity _$LotteryStandEntityFromJson(Map<String, dynamic> json) {
  return _LotteryStandEntity.fromJson(json);
}

/// @nodoc
mixin _$LotteryStandEntity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "groups")
  GroupEntity get group => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get imei => throw _privateConstructorUsedError;
  @JsonKey(name: "constraint_levels")
  ConstraintLevelEntity get constraintLevel =>
      throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_sale_amount")
  num get maximumSaleAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "maximum_cancellation_amount")
  num get maximumCancellationAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "quiniela_max_amount")
  num? get quinielaMaxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "pale_max_amount")
  num? get paleMaxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "tripleta_max_amount")
  num? get tripletaMaxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "commission_rate")
  num? get commissionRate => throw _privateConstructorUsedError;
  @JsonKey(name: "share_only")
  bool get shareOnly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryStandEntityCopyWith<LotteryStandEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryStandEntityCopyWith<$Res> {
  factory $LotteryStandEntityCopyWith(
          LotteryStandEntity value, $Res Function(LotteryStandEntity) then) =
      _$LotteryStandEntityCopyWithImpl<$Res, LotteryStandEntity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "groups") GroupEntity group,
      String name,
      String username,
      String? imei,
      @JsonKey(name: "constraint_levels") ConstraintLevelEntity constraintLevel,
      bool active,
      @JsonKey(name: "maximum_sale_amount") num maximumSaleAmount,
      @JsonKey(name: "maximum_cancellation_amount")
      num maximumCancellationAmount,
      @JsonKey(name: "quiniela_max_amount") num? quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") num? paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount") num? tripletaMaxAmount,
      @JsonKey(name: "commission_rate") num? commissionRate,
      @JsonKey(name: "share_only") bool shareOnly});

  $GroupEntityCopyWith<$Res> get group;
  $ConstraintLevelEntityCopyWith<$Res> get constraintLevel;
}

/// @nodoc
class _$LotteryStandEntityCopyWithImpl<$Res, $Val extends LotteryStandEntity>
    implements $LotteryStandEntityCopyWith<$Res> {
  _$LotteryStandEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? group = null,
    Object? name = null,
    Object? username = null,
    Object? imei = freezed,
    Object? constraintLevel = null,
    Object? active = null,
    Object? maximumSaleAmount = null,
    Object? maximumCancellationAmount = null,
    Object? quinielaMaxAmount = freezed,
    Object? paleMaxAmount = freezed,
    Object? tripletaMaxAmount = freezed,
    Object? commissionRate = freezed,
    Object? shareOnly = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupEntity,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imei: freezed == imei
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String?,
      constraintLevel: null == constraintLevel
          ? _value.constraintLevel
          : constraintLevel // ignore: cast_nullable_to_non_nullable
              as ConstraintLevelEntity,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      maximumSaleAmount: null == maximumSaleAmount
          ? _value.maximumSaleAmount
          : maximumSaleAmount // ignore: cast_nullable_to_non_nullable
              as num,
      maximumCancellationAmount: null == maximumCancellationAmount
          ? _value.maximumCancellationAmount
          : maximumCancellationAmount // ignore: cast_nullable_to_non_nullable
              as num,
      quinielaMaxAmount: freezed == quinielaMaxAmount
          ? _value.quinielaMaxAmount
          : quinielaMaxAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      paleMaxAmount: freezed == paleMaxAmount
          ? _value.paleMaxAmount
          : paleMaxAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      tripletaMaxAmount: freezed == tripletaMaxAmount
          ? _value.tripletaMaxAmount
          : tripletaMaxAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      commissionRate: freezed == commissionRate
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as num?,
      shareOnly: null == shareOnly
          ? _value.shareOnly
          : shareOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupEntityCopyWith<$Res> get group {
    return $GroupEntityCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConstraintLevelEntityCopyWith<$Res> get constraintLevel {
    return $ConstraintLevelEntityCopyWith<$Res>(_value.constraintLevel,
        (value) {
      return _then(_value.copyWith(constraintLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotteryStandEntityImplCopyWith<$Res>
    implements $LotteryStandEntityCopyWith<$Res> {
  factory _$$LotteryStandEntityImplCopyWith(_$LotteryStandEntityImpl value,
          $Res Function(_$LotteryStandEntityImpl) then) =
      __$$LotteryStandEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: "groups") GroupEntity group,
      String name,
      String username,
      String? imei,
      @JsonKey(name: "constraint_levels") ConstraintLevelEntity constraintLevel,
      bool active,
      @JsonKey(name: "maximum_sale_amount") num maximumSaleAmount,
      @JsonKey(name: "maximum_cancellation_amount")
      num maximumCancellationAmount,
      @JsonKey(name: "quiniela_max_amount") num? quinielaMaxAmount,
      @JsonKey(name: "pale_max_amount") num? paleMaxAmount,
      @JsonKey(name: "tripleta_max_amount") num? tripletaMaxAmount,
      @JsonKey(name: "commission_rate") num? commissionRate,
      @JsonKey(name: "share_only") bool shareOnly});

  @override
  $GroupEntityCopyWith<$Res> get group;
  @override
  $ConstraintLevelEntityCopyWith<$Res> get constraintLevel;
}

/// @nodoc
class __$$LotteryStandEntityImplCopyWithImpl<$Res>
    extends _$LotteryStandEntityCopyWithImpl<$Res, _$LotteryStandEntityImpl>
    implements _$$LotteryStandEntityImplCopyWith<$Res> {
  __$$LotteryStandEntityImplCopyWithImpl(_$LotteryStandEntityImpl _value,
      $Res Function(_$LotteryStandEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? group = null,
    Object? name = null,
    Object? username = null,
    Object? imei = freezed,
    Object? constraintLevel = null,
    Object? active = null,
    Object? maximumSaleAmount = null,
    Object? maximumCancellationAmount = null,
    Object? quinielaMaxAmount = freezed,
    Object? paleMaxAmount = freezed,
    Object? tripletaMaxAmount = freezed,
    Object? commissionRate = freezed,
    Object? shareOnly = null,
  }) {
    return _then(_$LotteryStandEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as GroupEntity,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      imei: freezed == imei
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String?,
      constraintLevel: null == constraintLevel
          ? _value.constraintLevel
          : constraintLevel // ignore: cast_nullable_to_non_nullable
              as ConstraintLevelEntity,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      maximumSaleAmount: null == maximumSaleAmount
          ? _value.maximumSaleAmount
          : maximumSaleAmount // ignore: cast_nullable_to_non_nullable
              as num,
      maximumCancellationAmount: null == maximumCancellationAmount
          ? _value.maximumCancellationAmount
          : maximumCancellationAmount // ignore: cast_nullable_to_non_nullable
              as num,
      quinielaMaxAmount: freezed == quinielaMaxAmount
          ? _value.quinielaMaxAmount
          : quinielaMaxAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      paleMaxAmount: freezed == paleMaxAmount
          ? _value.paleMaxAmount
          : paleMaxAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      tripletaMaxAmount: freezed == tripletaMaxAmount
          ? _value.tripletaMaxAmount
          : tripletaMaxAmount // ignore: cast_nullable_to_non_nullable
              as num?,
      commissionRate: freezed == commissionRate
          ? _value.commissionRate
          : commissionRate // ignore: cast_nullable_to_non_nullable
              as num?,
      shareOnly: null == shareOnly
          ? _value.shareOnly
          : shareOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryStandEntityImpl implements _LotteryStandEntity {
  const _$LotteryStandEntityImpl(
      {required this.id,
      @JsonKey(name: "groups") required this.group,
      required this.name,
      required this.username,
      this.imei = null,
      @JsonKey(name: "constraint_levels") required this.constraintLevel,
      required this.active,
      @JsonKey(name: "maximum_sale_amount") required this.maximumSaleAmount,
      @JsonKey(name: "maximum_cancellation_amount")
      required this.maximumCancellationAmount,
      @JsonKey(name: "quiniela_max_amount") this.quinielaMaxAmount = null,
      @JsonKey(name: "pale_max_amount") this.paleMaxAmount = null,
      @JsonKey(name: "tripleta_max_amount") this.tripletaMaxAmount = null,
      @JsonKey(name: "commission_rate") this.commissionRate = 0,
      @JsonKey(name: "share_only") this.shareOnly = false});

  factory _$LotteryStandEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryStandEntityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "groups")
  final GroupEntity group;
  @override
  final String name;
  @override
  final String username;
  @override
  @JsonKey()
  final String? imei;
  @override
  @JsonKey(name: "constraint_levels")
  final ConstraintLevelEntity constraintLevel;
  @override
  final bool active;
  @override
  @JsonKey(name: "maximum_sale_amount")
  final num maximumSaleAmount;
  @override
  @JsonKey(name: "maximum_cancellation_amount")
  final num maximumCancellationAmount;
  @override
  @JsonKey(name: "quiniela_max_amount")
  final num? quinielaMaxAmount;
  @override
  @JsonKey(name: "pale_max_amount")
  final num? paleMaxAmount;
  @override
  @JsonKey(name: "tripleta_max_amount")
  final num? tripletaMaxAmount;
  @override
  @JsonKey(name: "commission_rate")
  final num? commissionRate;
  @override
  @JsonKey(name: "share_only")
  final bool shareOnly;

  @override
  String toString() {
    return 'LotteryStandEntity(id: $id, group: $group, name: $name, username: $username, imei: $imei, constraintLevel: $constraintLevel, active: $active, maximumSaleAmount: $maximumSaleAmount, maximumCancellationAmount: $maximumCancellationAmount, quinielaMaxAmount: $quinielaMaxAmount, paleMaxAmount: $paleMaxAmount, tripletaMaxAmount: $tripletaMaxAmount, commissionRate: $commissionRate, shareOnly: $shareOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryStandEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.imei, imei) || other.imei == imei) &&
            (identical(other.constraintLevel, constraintLevel) ||
                other.constraintLevel == constraintLevel) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.maximumSaleAmount, maximumSaleAmount) ||
                other.maximumSaleAmount == maximumSaleAmount) &&
            (identical(other.maximumCancellationAmount,
                    maximumCancellationAmount) ||
                other.maximumCancellationAmount == maximumCancellationAmount) &&
            (identical(other.quinielaMaxAmount, quinielaMaxAmount) ||
                other.quinielaMaxAmount == quinielaMaxAmount) &&
            (identical(other.paleMaxAmount, paleMaxAmount) ||
                other.paleMaxAmount == paleMaxAmount) &&
            (identical(other.tripletaMaxAmount, tripletaMaxAmount) ||
                other.tripletaMaxAmount == tripletaMaxAmount) &&
            (identical(other.commissionRate, commissionRate) ||
                other.commissionRate == commissionRate) &&
            (identical(other.shareOnly, shareOnly) ||
                other.shareOnly == shareOnly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      group,
      name,
      username,
      imei,
      constraintLevel,
      active,
      maximumSaleAmount,
      maximumCancellationAmount,
      quinielaMaxAmount,
      paleMaxAmount,
      tripletaMaxAmount,
      commissionRate,
      shareOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryStandEntityImplCopyWith<_$LotteryStandEntityImpl> get copyWith =>
      __$$LotteryStandEntityImplCopyWithImpl<_$LotteryStandEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryStandEntityImplToJson(
      this,
    );
  }
}

abstract class _LotteryStandEntity implements LotteryStandEntity {
  const factory _LotteryStandEntity(
          {required final String id,
          @JsonKey(name: "groups") required final GroupEntity group,
          required final String name,
          required final String username,
          final String? imei,
          @JsonKey(name: "constraint_levels")
          required final ConstraintLevelEntity constraintLevel,
          required final bool active,
          @JsonKey(name: "maximum_sale_amount")
          required final num maximumSaleAmount,
          @JsonKey(name: "maximum_cancellation_amount")
          required final num maximumCancellationAmount,
          @JsonKey(name: "quiniela_max_amount") final num? quinielaMaxAmount,
          @JsonKey(name: "pale_max_amount") final num? paleMaxAmount,
          @JsonKey(name: "tripleta_max_amount") final num? tripletaMaxAmount,
          @JsonKey(name: "commission_rate") final num? commissionRate,
          @JsonKey(name: "share_only") final bool shareOnly}) =
      _$LotteryStandEntityImpl;

  factory _LotteryStandEntity.fromJson(Map<String, dynamic> json) =
      _$LotteryStandEntityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "groups")
  GroupEntity get group;
  @override
  String get name;
  @override
  String get username;
  @override
  String? get imei;
  @override
  @JsonKey(name: "constraint_levels")
  ConstraintLevelEntity get constraintLevel;
  @override
  bool get active;
  @override
  @JsonKey(name: "maximum_sale_amount")
  num get maximumSaleAmount;
  @override
  @JsonKey(name: "maximum_cancellation_amount")
  num get maximumCancellationAmount;
  @override
  @JsonKey(name: "quiniela_max_amount")
  num? get quinielaMaxAmount;
  @override
  @JsonKey(name: "pale_max_amount")
  num? get paleMaxAmount;
  @override
  @JsonKey(name: "tripleta_max_amount")
  num? get tripletaMaxAmount;
  @override
  @JsonKey(name: "commission_rate")
  num? get commissionRate;
  @override
  @JsonKey(name: "share_only")
  bool get shareOnly;
  @override
  @JsonKey(ignore: true)
  _$$LotteryStandEntityImplCopyWith<_$LotteryStandEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
