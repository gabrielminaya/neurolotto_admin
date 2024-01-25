import 'package:freezed_annotation/freezed_annotation.dart';

part 'lottery_entity.freezed.dart';
part 'lottery_entity.g.dart';

@Freezed()
sealed class LotteryEntity with _$LotteryEntity {
  const factory LotteryEntity({
    required String id,
    required String name,
    required bool status,
    @JsonKey(name: "is_closed") @Default(null) bool? isClosed,
    @JsonKey(name: "time_open") @Default(null) String? timeOpen,
    @JsonKey(name: "time_close") @Default(null) String? timeClose,
  }) = _LotteryEntity;

  factory LotteryEntity.fromJson(Map<String, dynamic> json) => _$LotteryEntityFromJson(json);
}
