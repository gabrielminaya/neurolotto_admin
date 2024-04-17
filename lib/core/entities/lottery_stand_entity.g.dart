// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_stand_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryStandEntityImpl _$$LotteryStandEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LotteryStandEntityImpl(
      id: json['id'] as String,
      group: GroupEntity.fromJson(json['groups'] as Map<String, dynamic>),
      name: json['name'] as String,
      username: json['username'] as String,
      imei: json['imei'] as String? ?? null,
      constraintLevel: ConstraintLevelEntity.fromJson(
          json['constraint_levels'] as Map<String, dynamic>),
      active: json['active'] as bool,
      maximumSaleAmount: json['maximum_sale_amount'] as num,
      maximumCancellationAmount: json['maximum_cancellation_amount'] as num,
      quinielaMaxAmount: json['quiniela_max_amount'] as num? ?? null,
      paleMaxAmount: json['pale_max_amount'] as num? ?? null,
      tripletaMaxAmount: json['tripleta_max_amount'] as num? ?? null,
      commissionRate: json['commission_rate'] as num? ?? 0,
    );

Map<String, dynamic> _$$LotteryStandEntityImplToJson(
        _$LotteryStandEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groups': instance.group,
      'name': instance.name,
      'username': instance.username,
      'imei': instance.imei,
      'constraint_levels': instance.constraintLevel,
      'active': instance.active,
      'maximum_sale_amount': instance.maximumSaleAmount,
      'maximum_cancellation_amount': instance.maximumCancellationAmount,
      'quiniela_max_amount': instance.quinielaMaxAmount,
      'pale_max_amount': instance.paleMaxAmount,
      'tripleta_max_amount': instance.tripletaMaxAmount,
      'commission_rate': instance.commissionRate,
    };
