import 'package:freezed_annotation/freezed_annotation.dart';

part 'lottery_schedule_date_entity.freezed.dart';
part 'lottery_schedule_date_entity.g.dart';

@Freezed()
sealed class LotteryScheduleDateEntity with _$LotteryScheduleDateEntity {
  const factory LotteryScheduleDateEntity({
    @JsonKey(name: "lottery_id") required String lotteryId,
    @JsonKey(name: "effective_date") required DateTime effectiveDate,
    @JsonKey(name: "time_open") required String timeOpen,
    @JsonKey(name: "time_close") required String timeClose,
    @JsonKey(name: "is_closed") required bool isClosed,
  }) = _LotteryScheduleDateEntity;

  factory LotteryScheduleDateEntity.fromJson(Map<String, dynamic> json) => _$LotteryScheduleDateEntityFromJson(json);
}
