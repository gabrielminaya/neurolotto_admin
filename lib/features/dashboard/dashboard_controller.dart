import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/hot_number_entity.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/services.dart';

part 'dashboard_controller.freezed.dart';

@Freezed()
sealed class DashboardControllerState with _$DashboardControllerState {
  factory DashboardControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isInitializing,
    @Default(null) String? failureMessage,
    @Default([]) List<HotNumberEntity> hotNumbers,
    @Default([]) List<LotteryEntity> lotteries,
    required DateTime selectedDate,
    @Default(null) LotteryEntity? selectedLottery,
    @Default(true) bool orderByQuantity,
  }) = _DashboardControllerState;
}

@LazySingleton()
class DashboardController extends ValueNotifier<DashboardControllerState> {
  DashboardController(this._client) : super(DashboardControllerState(selectedDate: DateTime.now()));

  final SupabaseClient _client;

  Future<void> initialize() async {
    value = value.copyWith(isInitializing: true);

    try {
      final builder = _client.rpc("fetch_lottery_with_schedules", params: {
        "in_consortium_id": authController.consortium?.id,
        "in_lottery_day_id": value.selectedDate.weekday,
      }).select<PostgrestList>();

      final lotteries = await builder.withConverter<List<LotteryEntity>>(
        (data) => data.map((e) => LotteryEntity.fromJson(e)).toList(),
      );

      lotteries.sort((a, b) => (a.isClosed ?? false) ? 1 : -1);

      value = value.copyWith(
        selectedLottery: value.selectedLottery ?? lotteries.firstOrNull,
        lotteries: lotteries,
      );
    } on PostgrestException catch (e) {
      value = value.copyWith(failureMessage: e.message);
    } finally {
      value = value.copyWith(isInitializing: false);
    }
  }

  Future<void> fetchPlaysByFilters({DateTime? atDate, bool? orderByQuantity, LotteryEntity? lottery}) async {
    value = value.copyWith(isLoading: true);

    if (atDate != null) {
      value = value.copyWith(selectedDate: atDate);
      await initialize();
    }

    try {
      final hotNumbers = await _client
          .rpc("get_most_played_numbers", params: {
            "in_consortium_id": authController.consortium?.id,
            "in_lottery_id": lottery?.id ?? value.selectedLottery?.id,
            "in_from": DateFormat("yyyy-MM-dd 00:00").format(atDate ?? value.selectedDate),
            "in_to": DateFormat("yyyy-MM-dd 23:59").format(atDate ?? value.selectedDate),
            "order_by_quantity": orderByQuantity ?? value.orderByQuantity,
          })
          .select<PostgrestList>()
          .withConverter<List<HotNumberEntity>>(
            (data) => data.map((e) => HotNumberEntity.fromJson(e)).toList(),
          );

      value = value.copyWith(hotNumbers: hotNumbers);
    } on PostgrestException catch (e) {
      value = value.copyWith(failureMessage: e.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }
}
