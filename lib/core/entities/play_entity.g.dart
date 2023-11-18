// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayEntityImpl _$$PlayEntityImplFromJson(Map<String, dynamic> json) =>
    _$PlayEntityImpl(
      playNumber: json['play_number'] as int,
      playAmount: json['play_amount'] as num,
      lotteryNames: (json['lottery_names'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      lotteryIds: (json['lottery_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PlayEntityImplToJson(_$PlayEntityImpl instance) =>
    <String, dynamic>{
      'play_number': instance.playNumber,
      'play_amount': instance.playAmount,
      'lottery_names': instance.lotteryNames,
      'lottery_ids': instance.lotteryIds,
    };
