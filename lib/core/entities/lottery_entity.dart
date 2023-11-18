import 'package:freezed_annotation/freezed_annotation.dart';

part 'lottery_entity.freezed.dart';
part 'lottery_entity.g.dart';

@Freezed()
sealed class LotteryEntity with _$LotteryEntity {
  const factory LotteryEntity({
    required String id,
    required String name,
    required bool status,
    @JsonKey(name: "quiniela_first_prize") required num quinielaFirstPrize,
    @JsonKey(name: "quiniela_second_prize") required num quinielaSecondPrize,
    @JsonKey(name: "quiniela_third_prize") required num quinielaThirdPrize,
    @JsonKey(name: "pale_first_second_prize") required num paleFirstSecondPrize,
    @JsonKey(name: "pale_first_third_prize") required num paleFirstThirdPrize,
    @JsonKey(name: "pale_second_third_prize") required num paleSecondThirdPrize,
    @JsonKey(name: "tripleta_prize") required num tripletaPrice,
    @JsonKey(name: "time_open") required String timeOpen,
    @JsonKey(name: "time_close") required String timeClose,
  }) = _LotteryEntity;

  factory LotteryEntity.fromJson(Map<String, dynamic> json) => _$LotteryEntityFromJson(json);
}
