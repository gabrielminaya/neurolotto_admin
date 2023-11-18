import 'package:freezed_annotation/freezed_annotation.dart';

part 'hot_number_entity.freezed.dart';
part 'hot_number_entity.g.dart';

@Freezed()
sealed class HotNumberEntity with _$HotNumberEntity {
  const factory HotNumberEntity({
    @JsonKey(name: "play_type_name") required String lotteryName,
    @JsonKey(name: "play_number") required num playNumber,
    @JsonKey(name: "total_plays") required num playQuantity,
    @JsonKey(name: "total_amount") required num totalAmount,
  }) = _HotNumberEntity;

  factory HotNumberEntity.fromJson(Map<String, dynamic> json) => _$HotNumberEntityFromJson(json);
}
