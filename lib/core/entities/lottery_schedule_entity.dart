import 'package:freezed_annotation/freezed_annotation.dart';

part 'lottery_schedule_entity.freezed.dart';
part 'lottery_schedule_entity.g.dart';

@Freezed()
sealed class LotteryScheduleEntity with _$LotteryScheduleEntity {
  const factory LotteryScheduleEntity({
    @JsonKey(name: "lottery_id") required String lotteryId,
    @JsonKey(name: "lottery_day_id") required int lotteryDayId,
    @JsonKey(name: "time_open") required String timeOpen,
    @JsonKey(name: "time_close") required String timeClose,
    @JsonKey(name: "is_closed") required bool isClosed,
  }) = _LotteryScheduleEntity;

  factory LotteryScheduleEntity.fromJson(Map<String, dynamic> json) => _$LotteryScheduleEntityFromJson(json);
}
