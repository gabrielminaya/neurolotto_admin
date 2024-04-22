import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_entity.freezed.dart';
part 'play_entity.g.dart';

@Freezed()
sealed class PlayEntity with _$PlayEntity {
  const factory PlayEntity({
    @JsonKey(name: "play_number") required String playNumber,
    @JsonKey(name: "play_amount") required num playAmount,
    @JsonKey(name: "lottery_names") required List<String> lotteryNames,
    @JsonKey(name: "lottery_ids") required List<String> lotteryIds,
  }) = _PlayEntity;

  factory PlayEntity.fromJson(Map<String, dynamic> json) => _$PlayEntityFromJson(json);
}
