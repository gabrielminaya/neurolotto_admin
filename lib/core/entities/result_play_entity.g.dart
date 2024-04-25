// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_play_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultPlayEntityImpl _$$ResultPlayEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultPlayEntityImpl(
      sequenceNumber: json['sequence_number'] as num,
      createdAt: DateTime.parse(json['created_at'] as String),
      lotteryStandName: json['lottery_stand_name'] as String,
      playTypeName: json['play_type_name'] as String,
      playNumber: json['play_number'] as String,
      playAmount: json['play_amount'] as num,
      lotteryName: json['lottery_name'] as String,
      winningAmount: json['winning_amount'] as num,
    );

Map<String, dynamic> _$$ResultPlayEntityImplToJson(
        _$ResultPlayEntityImpl instance) =>
    <String, dynamic>{
      'sequence_number': instance.sequenceNumber,
      'created_at': instance.createdAt.toIso8601String(),
      'lottery_stand_name': instance.lotteryStandName,
      'play_type_name': instance.playTypeName,
      'play_number': instance.playNumber,
      'play_amount': instance.playAmount,
      'lottery_name': instance.lotteryName,
      'winning_amount': instance.winningAmount,
    };
