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
      lotteryStand: LotteryStandEntity.fromJson(
          json['lottery_stands'] as Map<String, dynamic>),
      ticketState: TicketStateEntity.fromJson(
          json['ticket_states'] as Map<String, dynamic>),
      canceledByName: json['canceled_by_name'] as String?,
      commissionRate: json['commission_rate'] as num? ?? 0,
    );

Map<String, dynamic> _$$TicketEntityImplToJson(_$TicketEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sequence_number': instance.sequenceNumber,
      'created_at': instance.createdAt.toIso8601String(),
      'state_id': instance.stateId,
      'lottery_stands': instance.lotteryStand,
      'ticket_states': instance.ticketState,
      'canceled_by_name': instance.canceledByName,
      'commission_rate': instance.commissionRate,
    };
