import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'ticket_controller.freezed.dart';

@Freezed()
sealed class TicketControllerState with _$TicketControllerState {
  const factory TicketControllerState.initial() = _TicketControllerInitial;
  const factory TicketControllerState.loading() = _TicketControllerLoading;
  const factory TicketControllerState.failure(String message) = _TicketControllerFailure;
  const factory TicketControllerState.sucess() = _TicketControllerSuccess;
}

@LazySingleton()
class TicketController extends ValueNotifier<TicketControllerState> {
  TicketController(this._client) : super(const TicketControllerState.initial());

  final SupabaseClient _client;

  Future<void> fetch() async {
    value = const TicketControllerState.loading();

    try {
      final tickets = await _client.from("tickets").select<PostgrestList>();

      debugPrint(tickets.toString());
    } on PostgrestException catch (error) {
      debugPrint(error.message);
      value = TicketControllerState.failure(error.message);
    }
  }
}
