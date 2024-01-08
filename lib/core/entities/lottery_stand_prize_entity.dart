import 'package:freezed_annotation/freezed_annotation.dart';

import 'lottery_entity.dart';

part 'lottery_stand_prize_entity.freezed.dart';
part 'lottery_stand_prize_entity.g.dart';

@Freezed()
class LotteryStandPrizeEntity with _$LotteryStandPrizeEntity {
  const factory LotteryStandPrizeEntity({
    @JsonKey(name: "lotteries") required LotteryEntity lottery,
    @JsonKey(name: "quiniela_first_prize") required num quinielaFirstPrize,
    @JsonKey(name: "quiniela_second_prize") required num quinielaSecondPrize,
    @JsonKey(name: "quiniela_third_prize") required num quinielaThirdPrize,
    @JsonKey(name: "pale_first_second_prize") required num paleFirstSecondPrize,
    @JsonKey(name: "pale_first_third_prize") required num paleFirstThirdPrize,
    @JsonKey(name: "pale_second_third_prize") required num paleSecondThirdPrize,
    @JsonKey(name: "tripleta_prize") required num tripletaPrize,
  }) = _LotteryStandPrizeEntity;

  factory LotteryStandPrizeEntity.fromJson(Map<String, dynamic> json) => _$LotteryStandPrizeEntityFromJson(json);
}
