import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/group_entity.dart';
import '../../core/services.dart';

part 'group_controller.freezed.dart';

@Freezed()
class GroupControllerState with _$GroupControllerState {
  const factory GroupControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<GroupEntity> groups,
    @Default(null) GroupEntity? selectedGroup,
  }) = _GroupControllerState;
}

@LazySingleton()
class GroupController extends ValueNotifier<GroupControllerState> {
  GroupController(this._client) : super(const GroupControllerState());

  final SupabaseClient _client;

  void select(GroupEntity group) {
    value = value.copyWith(selectedGroup: group);
  }

  Future<void> fetch() async {
    value = const GroupControllerState(isLoading: true);

    try {
      final groups = await _client
          .from("groups")
          .select<PostgrestList>()
          .eq("consortium_id", authController.consortium?.id)
          .order("name", ascending: true)
          .withConverter<List<GroupEntity>>((data) => data.map((e) => GroupEntity.fromJson(e)).toList());
      value = GroupControllerState(groups: groups);
    } on PostgrestException catch (e) {
      value = GroupControllerState(failureMessage: e.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> add({
    required GroupEntity group,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      final createdGroup = await _client
          .from("groups")
          .insert({
            "name": group.name,
            "consortium_id": authController.consortium?.id,
            "quiniela_max_amount": group.quinielaMaxAmount,
            "pale_max_amount": group.paleMaxAmount,
            "tripleta_max_amount": group.tripletaMaxAmount,
          })
          .select<PostgrestMap?>()
          .limit(1)
          .single()
          .withConverter<GroupEntity?>((data) => data == null ? null : GroupEntity.fromJson(data));

      if (createdGroup != null) {
        final currentGroups = [...value.groups, createdGroup];
        currentGroups.sort((a, b) => a.name.compareTo(b.name));
        value = value.copyWith(groups: currentGroups, selectedGroup: createdGroup);
      }

      onSuccess();
    } on PostgrestException catch (e) {
      onFailure(e.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }

  Future<void> update({
    required GroupEntity group,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      final createdGroup = await _client
          .from("groups")
          .update({
            "name": group.name,
            "quiniela_max_amount": group.quinielaMaxAmount,
            "pale_max_amount": group.paleMaxAmount,
            "tripleta_max_amount": group.tripletaMaxAmount,
          })
          .eq("id", group.id)
          .select<PostgrestMap?>()
          .single()
          .withConverter<GroupEntity?>((data) => data == null ? null : GroupEntity.fromJson(data));

      if (createdGroup != null) {
        final currentGroups = [...value.groups];
        currentGroups.removeWhere((element) => element.id == group.id);
        currentGroups.add(createdGroup);
        currentGroups.sort((a, b) => a.name.compareTo(b.name));
        value = value.copyWith(groups: currentGroups, selectedGroup: createdGroup);
        onSuccess();
      }
    } on PostgrestException catch (e) {
      onFailure(e.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }

  Future<void> delete({
    required GroupEntity group,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      await _client.rpc("handle_delete_group", params: {"in_group_id": group.id});

      final currentGroups = [...value.groups];
      currentGroups.remove(group);
      value = value.copyWith(groups: currentGroups, selectedGroup: null);
      onSuccess();
    } on PostgrestException catch (e) {
      onFailure(e.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }
}
