// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_number_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotNumberEntityImpl _$$HotNumberEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$HotNumberEntityImpl(
      lotteryName: json['play_type_name'] as String,
      playNumber: json['play_number'] as num,
      playQuantity: json['total_plays'] as num,
      totalAmount: json['total_amount'] as num,
    );

Map<String, dynamic> _$$HotNumberEntityImplToJson(
        _$HotNumberEntityImpl instance) =>
    <String, dynamic>{
      'play_type_name': instance.lotteryName,
      'play_number': instance.playNumber,
      'total_plays': instance.playQuantity,
      'total_amount': instance.totalAmount,
    };
