import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_entity.freezed.dart';
part 'group_entity.g.dart';

@Freezed()
sealed class GroupEntity with _$GroupEntity {
  const factory GroupEntity({
    required String id,
    required String name,
    @JsonKey(name: "quiniela_max_amount") required num quinielaMaxAmount,
    @JsonKey(name: "pale_max_amount") required num paleMaxAmount,
    @JsonKey(name: "tripleta_max_amount") required num tripletaMaxAmount,
  }) = _GroupEntity;

  factory GroupEntity.fromJson(Map<String, dynamic> json) => _$GroupEntityFromJson(json);
}
