import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/group_entity.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/entities/sale_entity.dart';
import '../../core/services.dart';

part 'sale_controller.freezed.dart';

@Freezed()
class SaleControllerState with _$SaleControllerState {
  const factory SaleControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<SaleEntity> sales,
    @Default([]) List<GroupEntity> groups,
    @Default([]) List<LotteryStandEntity> lotteryStands,
    required DateTime selectedDate,
  }) = _SaleControllerState;
}

@LazySingleton()
class SaleController extends ValueNotifier<SaleControllerState> {
  SaleController(this._client) : super(SaleControllerState(selectedDate: DateTime.now()));

  final SupabaseClient _client;

  Future<void> initialize() async {
    value = value.copyWith(isLoading: true);

    try {
      final groups = await _client
          .from("groups")
          .select<PostgrestList>()
          .eq("consortium_id", authController.consortium?.id)
          .order("name", ascending: true)
          .withConverter<List<GroupEntity>>((data) => data.map((e) => GroupEntity.fromJson(e)).toList());

      final lotteryStands = await _client
          .from("lottery_stands")
          .select<PostgrestList>("*, constraint_levels(*), groups(*)")
          .in_("group_id", groups.map((e) => e.id).toList())
          .order("name", ascending: true)
          .withConverter<List<LotteryStandEntity>>((data) => data.map((e) => LotteryStandEntity.fromJson(e)).toList());

      value = value.copyWith(groups: groups, lotteryStands: lotteryStands);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> fetch({
    DateTime? atDate,
    GroupEntity? group,
    LotteryStandEntity? lotteryStand,
  }) async {
    value = value.copyWith(isLoading: true);

    if (atDate != null) value = value.copyWith(selectedDate: atDate);

    try {
      final builder = _client.rpc("fetch_winning_number_by_groups", params: {
        "in_consortium_id": authController.consortium?.id,
        "in_effetive_date": atDate?.toIso8601String() ?? value.selectedDate.toIso8601String(),
        "in_group_id": group?.id,
        "in_lottery_stand_id": lotteryStand?.id,
      }).select<PostgrestList>();

      final sales = await builder.withConverter<List<SaleEntity>>(
        (data) => data.map((e) => SaleEntity.fromJson(e)).toList(),
      );

      value = value.copyWith(sales: sales, isLoading: false);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    }
  }
}
