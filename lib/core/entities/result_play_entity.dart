import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_play_entity.freezed.dart';
part 'result_play_entity.g.dart';

@Freezed()
sealed class ResultPlayEntity with _$ResultPlayEntity {
  const factory ResultPlayEntity({
    @JsonKey(name: "sequence_number") required num sequenceNumber,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "lottery_stand_name") required String lotteryStandName,
    @JsonKey(name: "play_type_name") required String playTypeName,
    @JsonKey(name: "play_number") required String playNumber,
    @JsonKey(name: "play_amount") required num playAmount,
    @JsonKey(name: "lottery_name") required String lotteryName,
    @JsonKey(name: "winning_amount") required num winningAmount,
  }) = _ResultPlayEntity;

  factory ResultPlayEntity.fromJson(Map<String, dynamic> json) => _$ResultPlayEntityFromJson(json);
}
