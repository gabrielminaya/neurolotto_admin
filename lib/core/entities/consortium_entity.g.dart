// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consortium_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsortiumEntityImpl _$$ConsortiumEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsortiumEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      maximumSaleAmount: json['maximum_sale_amount'] as num,
      quinielaMaxAmount: json['quiniela_max_amount'] as num,
      paleMaxAmount: json['pale_max_amount'] as num,
      tripletaMaxAmount: json['tripleta_max_amount'] as num,
    );

Map<String, dynamic> _$$ConsortiumEntityImplToJson(
        _$ConsortiumEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'maximum_sale_amount': instance.maximumSaleAmount,
      'quiniela_max_amount': instance.quinielaMaxAmount,
      'pale_max_amount': instance.paleMaxAmount,
      'tripleta_max_amount': instance.tripletaMaxAmount,
    };
