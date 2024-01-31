import 'package:freezed_annotation/freezed_annotation.dart';

part 'lottery_stand_play_constraint_entity.freezed.dart';
part 'lottery_stand_play_constraint_entity.g.dart';

@Freezed()
sealed class LotteryStandPlayConstraintEntity with _$LotteryStandPlayConstraintEntity {
  const factory LotteryStandPlayConstraintEntity({
    @JsonKey(name: "play_number") required num playNumber,
    @JsonKey(name: "constraint_amount") required num constraintAmount,
    @JsonKey(name: "constraint_max_amount") required num constraintMaxAmount,
  }) = _LotteryStandPlayConstraintEntity;

  factory LotteryStandPlayConstraintEntity.fromJson(Map<String, dynamic> json) =>
      _$LotteryStandPlayConstraintEntityFromJson(json);
}
