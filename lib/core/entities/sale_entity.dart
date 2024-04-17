import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_entity.freezed.dart';
part 'sale_entity.g.dart';

@Freezed()
sealed class SaleEntity with _$SaleEntity {
  const factory SaleEntity({
    @JsonKey(name: "lottery_stand_name") required String lotteryStandName,
    @JsonKey(name: "play_amount") required num playAmount,
    @JsonKey(name: "winning_amount") required num winningAmount,
    @JsonKey(name: "lottery_stand_commission_amount") required num commissionAmount,
  }) = _SaleEntity;

  factory SaleEntity.fromJson(Map<String, dynamic> json) => _$SaleEntityFromJson(json);
}
