import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_entity.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/entities/sale_detail_entity.dart';
import '../../core/services.dart';

part 'sale_detail_controller.freezed.dart';

@Freezed()
class SaleDetailControllerState with _$SaleDetailControllerState {
  const factory SaleDetailControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isInitializing,
    @Default(null) String? failureMessage,
    @Default([]) List<SaleDetailEntity> saleDetails,
    @Default([]) List<LotteryStandEntity> lotteryStands,
    @Default(null) LotteryStandEntity? selectedLotteryStand,
    required DateTime atDate,
  }) = _SaleDetailControllerSuccess;
}

@LazySingleton()
class SaleDetailController extends ValueNotifier<SaleDetailControllerState> {
  SaleDetailController(this._client) : super(SaleDetailControllerState(atDate: DateTime.now().toLocal()));

  final SupabaseClient _client;

  Future<void> initialize() async {
    value = value.copyWith(isInitializing: true);

    try {
      final stands = await _client
          .from("lottery_stands")
          .select<PostgrestList>("*, constraint_levels(*), groups!inner(*)")
          .eq("groups.consortium_id", authController.consortium?.id)
          .order("name", ascending: true)
          .withConverter<List<LotteryStandEntity>>((data) => data.map((e) => LotteryStandEntity.fromJson(e)).toList());

      value = value.copyWith(lotteryStands: stands);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.toString());
    } finally {
      value = value.copyWith(isInitializing: false);
    }
  }

  Future<void> fetch({DateTime? atDate, LotteryEntity? lottery, LotteryStandEntity? lotteryStand}) async {
    value = value.copyWith(isLoading: true);

    try {
      final builder = _client.rpc("fetch_winning_number_by_lotteries", params: {
        "in_effetive_date": DateFormat("yyyy-MM-dd").format(atDate ?? DateTime.now().toLocal()),
        "in_consortium_id": authController.consortium?.id,
        "in_lottery_stand_id": value.selectedLotteryStand?.id ?? lotteryStand?.id,
        "in_lottery_id": null,
      }).select<PostgrestList>();

      final sales = await builder.withConverter<List<SaleDetailEntity>>(
        (data) => data.map((e) => SaleDetailEntity.fromJson(e)).toList(),
      );

      value = value.copyWith(saleDetails: sales, atDate: atDate ?? DateTime.now(), isLoading: false);
    } on PostgrestException catch (error) {
      value = value.copyWith(failureMessage: error.message);
    }
  }
}
