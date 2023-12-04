import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_state_entity.freezed.dart';
part 'ticket_state_entity.g.dart';

@Freezed()
sealed class TicketStateEntity with _$TicketStateEntity {
  const factory TicketStateEntity({
    required String id,
    required String name,
  }) = _TicketStateEntity;

  factory TicketStateEntity.fromJson(Map<String, dynamic> json) => _$TicketStateEntityFromJson(json);
}
