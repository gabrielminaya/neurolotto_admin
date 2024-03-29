import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_stand_entity.dart';
import '../../core/entities/ticket_entity.dart';
import '../../core/services.dart';

part 'ticket_controller.freezed.dart';

@Freezed()
sealed class TicketControllerState with _$TicketControllerState {
  const factory TicketControllerState({
    @Default(false) bool isInitializedLoading,
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default([]) List<TicketEntity> tickets,
    @Default([]) List<LotteryStandEntity> lotteryStands,
    @Default(null) String? failureMessage,
    required DateTime selectedDate,
    @Default(null) TicketEntity? selectedTicket,
  }) = _TicketControllerState;
}

@LazySingleton()
class TicketController extends ValueNotifier<TicketControllerState> {
  TicketController(this._client) : super(TicketControllerState(selectedDate: DateTime.now()));

  final SupabaseClient _client;

  void select(TicketEntity ticket) {
    value = value.copyWith(selectedTicket: ticket);
  }

  Future<void> initialize() async {
    value = value.copyWith(isInitializedLoading: true);

    try {
      final stands = await _client
          .from("lottery_stands")
          .select<PostgrestList>("*, constraint_levels(*), groups!inner(*)")
          .eq("groups.consortium_id", authController.consortium?.id)
          .withConverter<List<LotteryStandEntity>>((data) => data.map((e) => LotteryStandEntity.fromJson(e)).toList());

      value = value.copyWith(lotteryStands: stands, failureMessage: null);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isInitializedLoading: false);
    }
  }

  Future<void> fetch({DateTime? atDate, LotteryStandEntity? stand}) async {
    value = value.copyWith(isLoading: true, selectedTicket: null);

    if (atDate != null) value = value.copyWith(selectedDate: atDate);

    try {
      final builder = _client
          .from("tickets")
          .select<PostgrestList>("*, lottery_stands!inner(*, constraint_levels(*), groups!inner(*)), ticket_states(*)")
          .eq("lottery_stands.groups.consortium_id", authController.consortium?.id);

      if (stand != null) {
        builder.eq("lottery_stand_id", stand.id);
      }

      final tickets = await builder
          .lte("created_at", DateFormat("yyyy-MM-dd 23:59").format(atDate ?? value.selectedDate))
          .gte("created_at", DateFormat("yyyy-MM-dd 00:00").format(atDate ?? value.selectedDate))
          .order("created_at", ascending: false)
          .withConverter<List<TicketEntity>>(
            (data) => data.map((e) => TicketEntity.fromJson(e)).toList(),
          );

      value = value.copyWith(tickets: tickets, failureMessage: null);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> cancel({
    required TicketEntity ticket,
    required void Function() onSuccess,
    required void Function(String message) onFailure,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      final updatedTicket = await _client
          .rpc("cancel_ticket", params: {
            "in_ticket_id": ticket.id,
            "in_user_id": authController.user?.id,
          })
          .select<PostgrestMap?>("*, lottery_stands(*, constraint_levels(*), groups(*)), ticket_states(*)")
          .single()
          .withConverter<TicketEntity?>((data) => data == null ? null : TicketEntity.fromJson(data));

      if (updatedTicket != null) {
        final currentTickets = [...value.tickets];
        final index = currentTickets.indexWhere((element) => element.id == updatedTicket.id);
        currentTickets.removeAt(index);
        currentTickets.insert(index, updatedTicket);
        value = value.copyWith(tickets: currentTickets, selectedTicket: updatedTicket);
      }

      onSuccess();
    } on PostgrestException catch (error) {
      onFailure(error.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }
}
