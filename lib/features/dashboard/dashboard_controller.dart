import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/hot_number_entity.dart';

part 'dashboard_controller.freezed.dart';

@Freezed()
sealed class DashboardControllerState with _$DashboardControllerState {
  factory DashboardControllerState({
    @Default(false) bool isLoading,
    @Default(null) String? failureMessage,
    @Default([]) List<HotNumberEntity> hotNumbers,
    @Default(1) int dateOption,
    required DateTimeRange dates,
    @Default(true) bool orderByQuantity,
  }) = _DashboardControllerState;
}

@LazySingleton()
class DashboardController extends ValueNotifier<DashboardControllerState> {
  DashboardController(this._client)
      : super(DashboardControllerState(dates: DateTimeRange(start: DateTime.now(), end: DateTime.now())));

  final SupabaseClient _client;

  void setFilters({bool? orderByQuantity, int? dateOption}) {
    final now = DateTime.now();
    DateTimeRange? dates = DateTimeRange(start: now, end: now);

    if (dateOption == 1) {
      dates = DateTimeRange(start: now, end: now);
    }

    if (dateOption == 2) {
      dates = DateTimeRange(start: now.subtract(const Duration(days: 1)), end: now.subtract(const Duration(days: 1)));
    }

    if (dateOption == 3) {
      dates = DateTimeRange(
          start: now.subtract(Duration(days: now.weekday - 1)), end: now.add(Duration(days: 7 - now.weekday)));
    }

    if (dateOption == 4) {
      dates = DateTimeRange(start: now.copyWith(day: 1), end: now.copyWith(day: 31));
    }

    if (dateOption == 5) {
      dates = DateTimeRange(start: now.copyWith(month: 1, day: 1), end: now.copyWith(month: 12, day: 31));
    }

    value = value.copyWith(
      dates: dates,
      orderByQuantity: orderByQuantity ?? value.orderByQuantity,
      dateOption: dateOption ?? value.dateOption,
    );
  }

  Future<void> fetchPlaysByFilters({bool showLoading = true}) async {
    if (showLoading) {
      value = value.copyWith(isLoading: true);
    }

    try {
      final hotNumbers = await _client
          .rpc("get_most_played_numbers", params: {
            "in_from": value.dates.start.toIso8601String(),
            "in_to": value.dates.end.toIso8601String(),
            "order_by_quantity": value.orderByQuantity,
          })
          .select<PostgrestList>()
          .withConverter<List<HotNumberEntity>>(
            (data) => data.map((e) => HotNumberEntity.fromJson(e)).toList(),
          );

      value = value.copyWith(hotNumbers: hotNumbers);
    } on PostgrestException catch (e) {
      value = value.copyWith(failureMessage: e.message);
    } finally {
      if (showLoading) {
        value = value.copyWith(isLoading: false);
      }
    }
  }
}
