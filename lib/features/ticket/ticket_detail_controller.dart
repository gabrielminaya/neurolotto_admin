import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/play_entity.dart';
import '../../core/entities/ticket_entity.dart';

part 'ticket_detail_controller.freezed.dart';

@Freezed()
class TicketDetailControllerState with _$TicketDetailControllerState {
  const factory TicketDetailControllerState.initial() = _TicketDetailControllerInitial;
  const factory TicketDetailControllerState.loading() = _TicketDetailControllerLoading;
  const factory TicketDetailControllerState.failure(String message) = _TicketDetailControllerFailure;
  const factory TicketDetailControllerState.success(List<PlayEntity> plays) = _TicketDetailControllerSuccess;
}

@LazySingleton()
class TicketDetailController extends ValueNotifier<TicketDetailControllerState> {
  TicketDetailController(this._client) : super(const TicketDetailControllerState.initial());

  final SupabaseClient _client;

  Future<void> fetch({required TicketEntity ticket}) async {
    value = const TicketDetailControllerState.loading();

    try {
      final plays = await _client
          .from("ticket_plays")
          .select<PostgrestList>("*")
          .eq("ticket_id", ticket.id)
          .withConverter<List<PlayEntity>>((data) => data.map((e) => PlayEntity.fromJson(e)).toList());

      value = TicketDetailControllerState.success(plays);
    } on PostgrestException catch (error) {
      debugPrint(error.message);
      value = TicketDetailControllerState.failure(error.message);
    }
  }
}
