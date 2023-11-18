import 'package:freezed_annotation/freezed_annotation.dart';

part 'constraint_level_entity.freezed.dart';
part 'constraint_level_entity.g.dart';

@Freezed()
sealed class ConstraintLevelEntity with _$ConstraintLevelEntity {
  const factory ConstraintLevelEntity({
    required String id,
    required String name,
  }) = _ConstraintLevelEntity;

  factory ConstraintLevelEntity.fromJson(Map<String, dynamic> json) => _$ConstraintLevelEntityFromJson(json);
}
