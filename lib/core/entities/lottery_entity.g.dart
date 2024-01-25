// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryEntityImpl _$$LotteryEntityImplFromJson(Map<String, dynamic> json) =>
    _$LotteryEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as bool,
      isClosed: json['is_closed'] as bool? ?? null,
      timeOpen: json['time_open'] as String? ?? null,
      timeClose: json['time_close'] as String? ?? null,
    );

Map<String, dynamic> _$$LotteryEntityImplToJson(_$LotteryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'is_closed': instance.isClosed,
      'time_open': instance.timeOpen,
      'time_close': instance.timeClose,
    };
