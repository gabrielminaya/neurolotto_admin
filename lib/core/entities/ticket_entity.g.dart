// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketEntityImpl _$$TicketEntityImplFromJson(Map<String, dynamic> json) =>
    _$TicketEntityImpl(
      id: json['id'] as String,
      sequenceNumber: json['sequence_number'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      stateId: json['state_id'] as String,
    );

Map<String, dynamic> _$$TicketEntityImplToJson(_$TicketEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequence_number': instance.sequenceNumber,
      'created_at': instance.createdAt.toIso8601String(),
      'state_id': instance.stateId,
    };
