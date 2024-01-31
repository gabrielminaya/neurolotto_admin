import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_play_constraint_entity.freezed.dart';
part 'group_play_constraint_entity.g.dart';

@Freezed()
sealed class GroupPlayConstraintEntity with _$GroupPlayConstraintEntity {
  const factory GroupPlayConstraintEntity({
    @JsonKey(name: "play_number") required num playNumber,
    @JsonKey(name: "constraint_amount") required num constraintAmount,
    @JsonKey(name: "constraint_max_amount") required num constraintMaxAmount,
  }) = _GroupPlayConstraintEntity;

  factory GroupPlayConstraintEntity.fromJson(Map<String, dynamic> json) => _$GroupPlayConstraintEntityFromJson(json);
}
