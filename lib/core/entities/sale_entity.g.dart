// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaleEntityImpl _$$SaleEntityImplFromJson(Map<String, dynamic> json) =>
    _$SaleEntityImpl(
      lotteryStandName: json['lottery_stand_name'] as String,
      playAmount: json['play_amount'] as num,
      amountWon: json['amount_won'] as num,
    );

Map<String, dynamic> _$$SaleEntityImplToJson(_$SaleEntityImpl instance) =>
    <String, dynamic>{
      'lottery_stand_name': instance.lotteryStandName,
      'play_amount': instance.playAmount,
      'amount_won': instance.amountWon,
    };
