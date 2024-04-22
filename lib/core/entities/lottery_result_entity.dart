import 'package:freezed_annotation/freezed_annotation.dart';

import 'lottery_entity.dart';

part 'lottery_result_entity.freezed.dart';
part 'lottery_result_entity.g.dart';

@Freezed()
sealed class LotteryResultEntity with _$LotteryResultEntity {
  const factory LotteryResultEntity({
    required String id,
    @JsonKey(name: "lotteries") required LotteryEntity lottery,
    @JsonKey(name: "play_date") required DateTime playDate,
    @JsonKey(name: "first_number") required String firstPrizeNumber,
    @JsonKey(name: "second_number") required String secondPrizeNumber,
    @JsonKey(name: "third_number") required String thirdPrizeNumber,
  }) = _LotteryResultEntity;

  factory LotteryResultEntity.fromJson(Map<String, dynamic> json) => _$LotteryResultEntityFromJson(json);
}
