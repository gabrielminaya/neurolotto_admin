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
    );

Map<String, dynamic> _$$LotteryEntityImplToJson(_$LotteryEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
    };
