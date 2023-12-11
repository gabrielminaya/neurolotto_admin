import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_entity.dart';

part 'lottery_controller.freezed.dart';

@Freezed()
sealed class LotteryControllerState with _$LotteryControllerState {
  const factory LotteryControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isActionLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<LotteryEntity> lotteries,
    @Default(null) LotteryEntity? selectedLottery,
  }) = _LotteryControllerState;
}

@LazySingleton()
class LotteryController extends ValueNotifier<LotteryControllerState> {
  LotteryController(this._client) : super(const LotteryControllerState());

  final SupabaseClient _client;

  void select(LotteryEntity lottery) {
    value = value.copyWith(selectedLottery: lottery);
  }

  Future<void> fetch() async {
    value = const LotteryControllerState(isLoading: true);

    try {
      final lotteries = await _client
          .from("lotteries")
          .select<PostgrestList>()
          .withConverter<List<LotteryEntity>>((data) => data.map((e) => LotteryEntity.fromJson(e)).toList());
      value = LotteryControllerState(lotteries: lotteries);
    } on PostgrestException catch (e) {
      value = LotteryControllerState(failureMessage: e.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> update({
    required LotteryEntity lottery,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isActionLoading: true);

    try {
      final createdLottery = await _client
          .from("lotteries")
          .update({
            "name": lottery.name,
            "status": lottery.status,
            "quiniela_first_prize": lottery.quinielaFirstPrize,
            "quiniela_second_prize": lottery.quinielaSecondPrize,
            "quiniela_third_prize": lottery.quinielaThirdPrize,
            "pale_first_second_prize": lottery.paleFirstSecondPrize,
            "pale_first_third_prize": lottery.paleFirstThirdPrize,
            "pale_second_third_prize": lottery.paleSecondThirdPrize,
            "tripleta_prize": lottery.tripletaPrice,
            "time_open": lottery.timeOpen,
            "time_close": lottery.timeClose
          })
          .eq("id", lottery.id)
          .select<PostgrestMap?>()
          .single()
          .withConverter<LotteryEntity?>((data) => data == null ? null : LotteryEntity.fromJson(data));

      final currentLotteries = [...value.lotteries];
      final index = currentLotteries.indexWhere((element) => element.id == lottery.id);

      if (index >= 0 && createdLottery != null) {
        currentLotteries.removeAt(index);
        currentLotteries.insert(index, createdLottery);
        value = value.copyWith(lotteries: currentLotteries, selectedLottery: createdLottery);
        onSuccess();
      }
    } on PostgrestException catch (e) {
      onFailure(e.message);
    } finally {
      value = value.copyWith(isActionLoading: false);
    }
  }
}
