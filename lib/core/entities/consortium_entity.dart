import 'package:freezed_annotation/freezed_annotation.dart';

part 'consortium_entity.freezed.dart';
part 'consortium_entity.g.dart';

@Freezed()
sealed class ConsortiumEntity with _$ConsortiumEntity {
  const factory ConsortiumEntity({
    required String id,
    required String name,
    @JsonKey(name: "maximum_sale_amount") required num maximumSaleAmount,
    @JsonKey(name: "quiniela_max_amount") required num quinielaMaxAmount,
    @JsonKey(name: "pale_max_amount") required num paleMaxAmount,
    @JsonKey(name: "tripleta_max_amount") required num tripletaMaxAmount,
  }) = _ConsortiumEntity;

  factory ConsortiumEntity.fromJson(Map<String, dynamic> json) => _$ConsortiumEntityFromJson(json);
}
