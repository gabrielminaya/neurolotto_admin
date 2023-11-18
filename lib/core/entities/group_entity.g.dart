// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupEntityImpl _$$GroupEntityImplFromJson(Map<String, dynamic> json) =>
    _$GroupEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      quinielaMaxAmount: json['quiniela_max_amount'] as num,
      paleMaxAmount: json['pale_max_amount'] as num,
      tripletaMaxAmount: json['tripleta_max_amount'] as num,
    );

Map<String, dynamic> _$$GroupEntityImplToJson(_$GroupEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'quiniela_max_amount': instance.quinielaMaxAmount,
      'pale_max_amount': instance.paleMaxAmount,
      'tripleta_max_amount': instance.tripletaMaxAmount,
    };
