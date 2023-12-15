// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleEntityImpl _$$SaleEntityImplFromJson(Map<String, dynamic> json) =>
    _$SaleEntityImpl(
      lotteryStandName: json['lottery_stand_name'] as String,
      playAmount: json['play_amount'] as num,
      winningAmount: json['winning_amount'] as num,
    );

Map<String, dynamic> _$$SaleEntityImplToJson(_$SaleEntityImpl instance) =>
    <String, dynamic>{
      'lottery_stand_name': instance.lotteryStandName,
      'play_amount': instance.playAmount,
      'winning_amount': instance.winningAmount,
    };
