import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_entity.freezed.dart';
part 'ticket_entity.g.dart';

@Freezed()
class TicketEntity with _$TicketEntity {
  const factory TicketEntity({
    required String id,
    @JsonKey(name: "sequence_number") required int sequenceNumber,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "state_id") required String stateId,
  }) = _TicketEntity;

  factory TicketEntity.fromJson(Map<String, dynamic> json) => _$TicketEntityFromJson(json);
}
