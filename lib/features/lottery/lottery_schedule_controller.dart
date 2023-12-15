import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_entity.dart';
import '../../core/entities/lottery_schedule_entity.dart';

part 'lottery_schedule_controller.freezed.dart';

@Freezed()
sealed class LotteryScheduleControllerState with _$LotteryScheduleControllerState {
  const factory LotteryScheduleControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<LotteryScheduleEntity> schedules,
  }) = _LotteryScheduleControllerState;
}

@LazySingleton()
class LotteryScheduleController extends ValueNotifier<LotteryScheduleControllerState> {
  LotteryScheduleController(this._client) : super(const LotteryScheduleControllerState());

  final SupabaseClient _client;

  Future<void> fetchSchedule(LotteryEntity lottery) async {
    value = value.copyWith(isLoading: true);

    try {
      final schedules = await _client
          .from("lottery_schedules")
          .select<PostgrestList>()
          .eq("lottery_id", lottery.id)
          .order("lottery_day_id", ascending: true)
          .withConverter<List<LotteryScheduleEntity>>(
              (data) => data.map((e) => LotteryScheduleEntity.fromJson(e)).toList());

      value = value.copyWith(schedules: schedules);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> updateSchedule({
    required LotteryScheduleEntity schedule,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      await _client
          .from("lottery_schedules")
          .update({
            "is_closed": schedule.isClosed,
            "time_open": schedule.timeOpen,
            "time_close": schedule.timeClose,
          })
          .eq("lottery_id", schedule.lotteryId)
          .eq("lottery_day_id", schedule.lotteryDayId);

      final currentSchedules = [...value.schedules];

      final index = currentSchedules.indexWhere(
        (element) => element.lotteryDayId == schedule.lotteryDayId,
      );

      if (index >= 0) {
        currentSchedules.removeAt(index);
        currentSchedules.insert(index, schedule);
        value = value.copyWith(schedules: currentSchedules);
      }

      onSuccess();
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }
}
