// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleDetailEntityImpl _$$SaleDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SaleDetailEntityImpl(
      lotteryId: json['lottery_id'] as String,
      lotteryName: json['lottery_name'] as String,
      playAmount: json['play_amount'] as num,
      winningAmount: json['winning_amount'] as num,
    );

Map<String, dynamic> _$$SaleDetailEntityImplToJson(
        _$SaleDetailEntityImpl instance) =>
    <String, dynamic>{
      'lottery_id': instance.lotteryId,
      'lottery_name': instance.lotteryName,
      'play_amount': instance.playAmount,
      'winning_amount': instance.winningAmount,
    };
