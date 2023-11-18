import 'package:freezed_annotation/freezed_annotation.dart';

import 'constraint_level_entity.dart';
import 'group_entity.dart';

part 'lottery_stand_entity.freezed.dart';
part 'lottery_stand_entity.g.dart';

@Freezed()
sealed class LotteryStandEntity with _$LotteryStandEntity {
  const factory LotteryStandEntity({
    required String id,
    @JsonKey(name: "groups") required GroupEntity group,
    required String name,
    required String username,
    @Default(null) String? imei,
    @JsonKey(name: "constraint_levels") required ConstraintLevelEntity constraintLevel,
    required bool active,
    @JsonKey(name: "maximum_sale_amount") required num maximumSaleAmount,
    @JsonKey(name: "maximum_cancellation_amount") required num maximumCancellationAmount,
    @JsonKey(name: "quiniela_max_amount") @Default(null) num? quinielaMaxAmount,
    @JsonKey(name: "pale_max_amount") @Default(null) num? paleMaxAmount,
    @JsonKey(name: "tripleta_max_amount") @Default(null) num? tripletaMaxAmount,
  }) = _LotteryStandEntity;

  factory LotteryStandEntity.fromJson(Map<String, dynamic> json) => _$LotteryStandEntityFromJson(json);
}
