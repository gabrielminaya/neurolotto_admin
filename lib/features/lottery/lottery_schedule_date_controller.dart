import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_entity.dart';
import '../../core/entities/lottery_schedule_date_entity.dart';

part 'lottery_schedule_date_controller.freezed.dart';

@Freezed()
sealed class LotteryScheduleDateControllerState with _$LotteryScheduleDateControllerState {
  const factory LotteryScheduleDateControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<LotteryScheduleDateEntity> lotteryScheduleDates,
  }) = _LotteryScheduleDateControllerState;
}

@LazySingleton()
class LotteryScheduleDateController extends ValueNotifier<LotteryScheduleDateControllerState> {
  LotteryScheduleDateController(this._client) : super(const LotteryScheduleDateControllerState());

  final SupabaseClient _client;

  Future<void> fetchScheduleDate(LotteryEntity lottery) async {
    value = value.copyWith(isLoading: true);

    try {
      final schedules = await _client
          .from("lottery_date_schedules")
          .select<PostgrestList>()
          .eq("lottery_id", lottery.id)
          .gte("effective_date", DateTime.now().toIso8601String())
          .order("effective_date", ascending: false)
          .limit(20)
          .withConverter<List<LotteryScheduleDateEntity>>(
            (data) => data.map((e) => LotteryScheduleDateEntity.fromJson(e)).toList(),
          );

      value = value.copyWith(lotteryScheduleDates: schedules);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> createScheduleDate({
    required LotteryScheduleDateEntity scheduleDate,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      await _client.from("lottery_date_schedules").insert({
        "lottery_id": scheduleDate.lotteryId,
        "effective_date": scheduleDate.effectiveDate.toIso8601String(),
        "time_open": scheduleDate.timeOpen,
        "time_close": scheduleDate.timeClose,
        "is_closed": scheduleDate.isClosed,
      });

      final currentSchedules = [...value.lotteryScheduleDates];
      currentSchedules.add(scheduleDate);
      value = value.copyWith(lotteryScheduleDates: currentSchedules);

      onSuccess();
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }

  Future<void> removeScheduleDate({
    required LotteryScheduleDateEntity scheduleDate,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      await _client
          .from("lottery_date_schedules")
          .delete()
          .eq("lottery_id", scheduleDate.lotteryId)
          .eq("effective_date", scheduleDate.effectiveDate);

      final currentSchedules = [...value.lotteryScheduleDates];

      final index = currentSchedules.indexWhere(
        (element) => element.lotteryId == scheduleDate.lotteryId,
      );

      if (index >= 0) {
        currentSchedules.removeAt(index);
        value = value.copyWith(lotteryScheduleDates: currentSchedules);
      }

      onSuccess();
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }
}
