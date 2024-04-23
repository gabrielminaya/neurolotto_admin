import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/constraint_level_entity.dart';
import '../../core/entities/group_entity.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/services.dart';

part 'stand_controller.freezed.dart';

@Freezed()
sealed class StandControllerState with _$StandControllerState {
  const factory StandControllerState({
    @Default(false) bool isUpdateLoading,
    @Default(false) bool isFormLoading,
    @Default(false) bool isLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<GroupEntity> groups,
    @Default([]) List<ConstraintLevelEntity> constraints,
    @Default([]) List<LotteryStandEntity> stands,
    @Default(null) LotteryStandEntity? currentStand,
  }) = _StandControllerState;
}

@LazySingleton()
class StandController extends ValueNotifier<StandControllerState> {
  StandController(this._client) : super(const StandControllerState());

  final SupabaseClient _client;

  void setStand(LotteryStandEntity stand) {
    value = value.copyWith(currentStand: stand);
  }

  Future<void> fetchFormDependecies() async {
    value = value.copyWith(isFormLoading: true);

    try {
      final result = await Future.wait([
        _client
            .from("groups")
            .select<PostgrestList>()
            .eq("consortium_id", authController.consortium?.id)
            .order("name", ascending: true)
            .withConverter<List<GroupEntity>>((data) => data.map((e) => GroupEntity.fromJson(e)).toList()),
        _client.from("constraint_levels").select<PostgrestList>().withConverter<List<ConstraintLevelEntity>>(
            (data) => data.map((e) => ConstraintLevelEntity.fromJson(e)).toList()),
      ]);

      value = value.copyWith(
        groups: result[0] as List<GroupEntity>,
        constraints: result[1] as List<ConstraintLevelEntity>,
      );
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isFormLoading: false);
    }
  }

  Future<void> fetch() async {
    value = value.copyWith(isLoading: true);

    try {
      final stands = await _client
          .from("lottery_stands")
          .select<PostgrestList>("*, constraint_levels(*), groups!inner(*)")
          .eq("groups.consortium_id", authController.consortium?.id)
          .order("name", ascending: true)
          .withConverter<List<LotteryStandEntity>>((data) => data.map((e) => LotteryStandEntity.fromJson(e)).toList());

      value = value.copyWith(stands: stands);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> update({
    required LotteryStandEntity stand,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isUpdateLoading: true);

    try {
      await _client.from("lottery_stands").update({
        "name": stand.name,
        "group_id": stand.group.id,
        "constraint_level_id": stand.constraintLevel.id,
        "active": stand.active,
        "maximum_sale_amount": stand.maximumSaleAmount,
        "maximum_cancellation_amount": stand.maximumCancellationAmount,
        "quiniela_max_amount": stand.quinielaMaxAmount,
        "pale_max_amount": stand.paleMaxAmount,
        "tripleta_max_amount": stand.tripletaMaxAmount,
        "commission_rate": stand.commissionRate,
        "share_only": stand.shareOnly,
      }).eq("id", stand.id);

      final currentStands = [...value.stands];
      final index = currentStands.indexWhere((element) => element.id == stand.id);

      if (index >= 0) {
        currentStands.removeAt(index);
        currentStands.insert(index, stand);
        value = value.copyWith(stands: currentStands);
      }

      value = value.copyWith(currentStand: stand);
      onSuccess();
    } on PostgrestException catch (error) {
      onFailure(error.message);
    } finally {
      value = value.copyWith(isUpdateLoading: false);
    }
  }
}
