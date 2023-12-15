// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_schedule_date_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryScheduleDateEntityImpl _$$LotteryScheduleDateEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LotteryScheduleDateEntityImpl(
      lotteryId: json['lottery_id'] as String,
      effectiveDate: DateTime.parse(json['effective_date'] as String),
      timeOpen: json['time_open'] as String,
      timeClose: json['time_close'] as String,
      isClosed: json['is_closed'] as bool,
    );

Map<String, dynamic> _$$LotteryScheduleDateEntityImplToJson(
        _$LotteryScheduleDateEntityImpl instance) =>
    <String, dynamic>{
      'lottery_id': instance.lotteryId,
      'effective_date': instance.effectiveDate.toIso8601String(),
      'time_open': instance.timeOpen,
      'time_close': instance.timeClose,
      'is_closed': instance.isClosed,
    };
