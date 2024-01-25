import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/result_play_entity.dart';
import '../../core/services.dart';

part 'result_plays_controller.freezed.dart';

@Freezed()
sealed class ResultPlayControllerState with _$ResultPlayControllerState {
  const factory ResultPlayControllerState({
    @Default(false) bool isLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<ResultPlayEntity> resultPlays,
    @Default(null) DateTime? selectedDate,
  }) = _ResultPlayControllerState;
}

@LazySingleton()
class ResultPlaysController extends ValueNotifier<ResultPlayControllerState> {
  ResultPlaysController(this._client) : super(const ResultPlayControllerState());

  final SupabaseClient _client;

  Future<void> fetch({DateTime? atDate}) async {
    value = value.copyWith(isLoading: true);

    try {
      final effetiveDate = value.selectedDate ?? atDate ?? DateTime.now();
      final resultPlays = await _client
          .rpc("fetch_winning_numbers", params: {
            "in_effetive_date": DateFormat("yyyy-MM-dd").format(effetiveDate),
            "in_consortium_id": authController.consortium?.id,
          })
          .gt("winning_amount", 0)
          .select<PostgrestList>()
          .withConverter<List<ResultPlayEntity>>((data) => data.map((e) => ResultPlayEntity.fromJson(e)).toList());

      resultPlays.sort((a, b) => b.sequenceNumber.toInt() - a.sequenceNumber.toInt());

      value = value.copyWith(resultPlays: resultPlays, selectedDate: effetiveDate);
    } on PostgrestException catch (e) {
      value = value.copyWith(failureMessage: e.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }
}
