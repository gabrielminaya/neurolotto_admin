import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_detail_entity.freezed.dart';
part 'sale_detail_entity.g.dart';

@Freezed()
sealed class SaleDetailEntity with _$SaleDetailEntity {
  const factory SaleDetailEntity({
    @JsonKey(name: "lottery_id") required String lotteryId,
    @JsonKey(name: "lottery_name") required String lotteryName,
    @JsonKey(name: "play_amount") required num playAmount,
    @JsonKey(name: "winning_amount") required num winningAmount,
    @JsonKey(name: "lottery_stand_commission_amount") required num commissionAmount,
  }) = _SaleDetailEntity;

  factory SaleDetailEntity.fromJson(Map<String, dynamic> json) => _$SaleDetailEntityFromJson(json);
}
