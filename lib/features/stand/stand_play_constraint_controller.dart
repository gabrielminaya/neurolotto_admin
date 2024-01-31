import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_stand_entity.dart';
import '../../core/entities/lottery_stand_play_constraint_entity.dart';

part 'stand_play_constraint_controller.freezed.dart';

@Freezed()
sealed class StandPlayConstraintControllerState with _$StandPlayConstraintControllerState {
  const factory StandPlayConstraintControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<LotteryStandPlayConstraintEntity> constraints,
  }) = _StandPlayConstraintControllerState;
}

@LazySingleton()
class StandPlayConstraintController extends ValueNotifier<StandPlayConstraintControllerState> {
  StandPlayConstraintController(this._client) : super(const StandPlayConstraintControllerState());

  final SupabaseClient _client;

  Future<void> fetch(LotteryStandEntity stand) async {
    value = value.copyWith(isLoading: true);

    try {
      final constraints = await _client
          .from("lottery_stand_play_constraints")
          .select<PostgrestList>()
          .eq("lottery_stand_id", stand.id)
          .order("play_number", ascending: true)
          .withConverter<List<LotteryStandPlayConstraintEntity>>(
            (data) => data.map((e) => LotteryStandPlayConstraintEntity.fromJson(e)).toList(),
          );

      value = value.copyWith(constraints: constraints);
    } on PostgrestException catch (e) {
      value = value.copyWith(failureMessage: e.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> update({
    required LotteryStandEntity stand,
    required num fromPlayNumber,
    required num? toPlayNumber,
    required num constraintAmount,
    required num constraintMaxAmount,
    required VoidCallback onSuccess,
    required ValueChanged<String> onFailure,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      await _client.rpc(
        "add_or_update_lottery_stand_play_constraint",
        params: {
          "in_lottery_stand_id": stand.id,
          "in_from_play_number": fromPlayNumber,
          "in_to_play_number": toPlayNumber,
          "in_constraint_amount": constraintAmount,
          "in_constraint_max_amount": constraintMaxAmount,
        },
      );

      onSuccess();
    } on PostgrestException catch (error) {
      onFailure(error.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }
}
