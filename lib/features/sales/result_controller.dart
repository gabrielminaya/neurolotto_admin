import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_entity.dart';
import '../../core/entities/lottery_result_entity.dart';
import '../../core/services.dart';

part 'result_controller.freezed.dart';

@Freezed()
sealed class ResultControllerState with _$ResultControllerState {
  const factory ResultControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isResultLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<LotteryEntity> lotteries,
    @Default([]) List<LotteryResultEntity> results,
  }) = _ResultControllerState;
}

@LazySingleton()
class ResultController extends ValueNotifier<ResultControllerState> {
  ResultController(this._client) : super(const ResultControllerState());

  final SupabaseClient _client;

  Future<void> initialize() async {
    value = const ResultControllerState(isResultLoading: true);

    try {
      final lotteries = await _client.from("lotteries").select<PostgrestList>().withConverter<List<LotteryEntity>>(
            (data) => data.map((e) => LotteryEntity.fromJson(e)).toList(),
          );

      value = value.copyWith(lotteries: lotteries);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isResultLoading: false);
    }
  }

  Future<void> fetchResults({DateTime? date}) async {
    value = value.copyWith(isLoading: true);

    try {
      final builder = _client
          .from("lottery_results")
          .select<PostgrestList>("*, lotteries(*)")
          .lte("play_date", DateFormat("yyyy-MM-dd 23:59").format(date ?? DateTime.now()))
          .gte("play_date", DateFormat("yyyy-MM-dd 00:00").format(date ?? DateTime.now()));

      final results = await builder
          .eq("consortium_id", authController.consortium?.id)
          .order("play_date", ascending: false)
          .withConverter<List<LotteryResultEntity>>(
            (data) => data.map((e) => LotteryResultEntity.fromJson(e)).toList(),
          );

      value = value.copyWith(results: results);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> add({
    required LotteryResultEntity result,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isLoading: true);
    try {
      await _client.from("lottery_results").insert({
        "consortium_id": authController.consortium?.id,
        "lottery_id": result.lottery.id,
        "play_date": result.playDate.toIso8601String(),
        "first_number": result.firstPrizeNumber,
        "second_number": result.secondPrizeNumber,
        "third_number": result.thirdPrizeNumber,
      });

      final currentResult = [...value.results];
      currentResult.add(result);
      value = value.copyWith(results: currentResult);

      onSuccess();
    } on PostgrestException catch (e) {
      if (e.message.contains("duplicate key value violates unique constraint") == true) {
        return onFailure("El resultado ya existe");
      }

      return onFailure(e.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> update({
    required LotteryResultEntity result,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isLoading: true);
    try {
      await _client.from("lottery_results").update({
        "first_number": result.firstPrizeNumber,
        "second_number": result.secondPrizeNumber,
        "third_number": result.thirdPrizeNumber,
      }).eq("id", result.id);

      final currentResult = [...value.results];
      currentResult.removeWhere((element) => element.id == result.id);
      currentResult.add(result);
      value = value.copyWith(results: currentResult);

      onSuccess();
    } on PostgrestException catch (e) {
      if (e.message.contains("duplicate key value violates unique constraint") == true) {
        return onFailure("El resultado ya existe");
      }

      onFailure(e.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }
}
