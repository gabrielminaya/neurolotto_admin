import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_stand_entity.dart';
import '../../core/entities/lottery_stand_prize_entity.dart';
import '../../core/services.dart';

part 'stand_prize_lottery_controller.freezed.dart';

@Freezed()
class StandPrizeLotteryControllerState with _$StandPrizeLotteryControllerState {
  const factory StandPrizeLotteryControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<LotteryStandPrizeEntity> prizes,
  }) = _StandPrizeLotteryControllerState;
}

@LazySingleton()
class StandPrizeLotteryController extends ValueNotifier<StandPrizeLotteryControllerState> {
  StandPrizeLotteryController(this._client) : super(const StandPrizeLotteryControllerState());

  final SupabaseClient _client;

  Future<void> fetchLotteries() async {
    try {
      value = value.copyWith(isLoading: true, failureMessage: null);

      final prizes = await _client
          .from("lottery_stand_prizes")
          .select<PostgrestList>("*, lotteries!inner(*)")
          .eq("lotteries.consortium_id", authController.consortium?.id)
          .withConverter<List<LotteryStandPrizeEntity>>(
            (data) => data.map((e) => LotteryStandPrizeEntity.fromJson(e)).toList(),
          );
      value = value.copyWith(prizes: prizes);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> update({
    required LotteryStandEntity stand,
    required LotteryStandPrizeEntity prize,
    required VoidCallback onSuccess,
    required ValueChanged<String> onFailure,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      await _client
          .from("lottery_stand_prizes")
          .update({
            "quiniela_first_prize": prize.quinielaFirstPrize,
            "quiniela_second_prize": prize.quinielaSecondPrize,
            "quiniela_third_prize": prize.quinielaThirdPrize,
            "pale_first_second_prize": prize.paleFirstSecondPrize,
            "pale_first_third_prize": prize.paleFirstThirdPrize,
            "pale_second_third_prize": prize.paleSecondThirdPrize,
            "tripleta_prize": prize.tripletaPrize,
          })
          .eq("lottery_stand_id", stand.id)
          .eq("lottery_id", prize.lottery.id);

      final currentPrizes = [...value.prizes];
      final index = currentPrizes.indexWhere((element) => element.lottery.id == prize.lottery.id);

      if (index >= 0) {
        currentPrizes.removeAt(index);
        currentPrizes.insert(index, prize);
        value = value.copyWith(prizes: currentPrizes);
      }

      onSuccess();
    } on PostgrestException catch (error) {
      onFailure(error.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }
}
