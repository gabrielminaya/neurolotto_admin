// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_schedule_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryScheduleEntityImpl _$$LotteryScheduleEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LotteryScheduleEntityImpl(
      lotteryId: json['lottery_id'] as String,
      lotteryDayId: json['lottery_day_id'] as int,
      timeOpen: json['time_open'] as String,
      timeClose: json['time_close'] as String,
      isClosed: json['is_closed'] as bool,
    );

Map<String, dynamic> _$$LotteryScheduleEntityImplToJson(
        _$LotteryScheduleEntityImpl instance) =>
    <String, dynamic>{
      'lottery_id': instance.lotteryId,
      'lottery_day_id': instance.lotteryDayId,
      'time_open': instance.timeOpen,
      'time_close': instance.timeClose,
      'is_closed': instance.isClosed,
    };
