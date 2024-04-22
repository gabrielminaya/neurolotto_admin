// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_result_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryResultEntityImpl _$$LotteryResultEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LotteryResultEntityImpl(
      id: json['id'] as String,
      lottery:
          LotteryEntity.fromJson(json['lotteries'] as Map<String, dynamic>),
      playDate: DateTime.parse(json['play_date'] as String),
      firstPrizeNumber: json['first_number'] as String,
      secondPrizeNumber: json['second_number'] as String,
      thirdPrizeNumber: json['third_number'] as String,
    );

Map<String, dynamic> _$$LotteryResultEntityImplToJson(
        _$LotteryResultEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lotteries': instance.lottery,
      'play_date': instance.playDate.toIso8601String(),
      'first_number': instance.firstPrizeNumber,
      'second_number': instance.secondPrizeNumber,
      'third_number': instance.thirdPrizeNumber,
    };
