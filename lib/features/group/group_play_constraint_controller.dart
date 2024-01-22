import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/group_entity.dart';
import '../../core/entities/group_play_constraint_entity.dart';

part 'group_play_constraint_controller.freezed.dart';

@Freezed()
sealed class GroupPlayConstraintControllerState with _$GroupPlayConstraintControllerState {
  const factory GroupPlayConstraintControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<GroupPlayConstraintEntity> constraints,
  }) = _GroupPlayConstraintControllerState;
}

@LazySingleton()
class GroupPlayConstraintController extends ValueNotifier<GroupPlayConstraintControllerState> {
  GroupPlayConstraintController(this._client) : super(const GroupPlayConstraintControllerState());

  final SupabaseClient _client;

  Future<void> fetch(GroupEntity group) async {
    value = value.copyWith(isLoading: true);

    try {
      final constraints = await _client
          .from("group_play_constraints")
          .select<PostgrestList>()
          .eq("group_id", group.id)
          .order("play_number", ascending: true)
          .withConverter<List<GroupPlayConstraintEntity>>(
            (data) => data.map((e) => GroupPlayConstraintEntity.fromJson(e)).toList(),
          );

      value = value.copyWith(constraints: constraints);
    } on PostgrestException catch (e) {
      value = value.copyWith(failureMessage: e.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> update({
    required GroupEntity group,
    required num fromPlayNumber,
    required num? toPlayNumber,
    required num constraintamount,
    required VoidCallback onSuccess,
    required ValueChanged<String> onFailure,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      await _client.rpc(
        "add_or_update_group_play_constraint",
        params: {
          "in_group_id": group.id,
          "in_from_play_number": fromPlayNumber,
          "in_to_play_number": toPlayNumber,
          "in_constraint_amount": constraintamount,
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
