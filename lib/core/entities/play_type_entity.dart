import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_type_entity.freezed.dart';
part 'play_type_entity.g.dart';

@Freezed()
class PlayTypeEntity with _$PlayTypeEntity {
  const factory PlayTypeEntity({
    required String id,
    required String name,
  }) = _PlayTypeEntity;

  factory PlayTypeEntity.fromJson(Map<String, dynamic> json) => _$PlayTypeEntityFromJson(json);
}
