import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_stand_entity.dart';

part 'stand_controller.freezed.dart';

@Freezed()
sealed class StandControllerState with _$StandControllerState {
  const factory StandControllerState.initial() = _StandControllerInitial;
  const factory StandControllerState.loading() = _StandControllerLoading;
  const factory StandControllerState.failure(String message) = _StandControllerFailure;
  const factory StandControllerState.success(List<LotteryStandEntity> stands) = _StandControllerSuccess;
}

@Injectable()
class StandController extends ValueNotifier<StandControllerState> {
  StandController(this._client) : super(const StandControllerState.initial());

  final SupabaseClient _client;

  Future<void> fetch() async {
    value = const StandControllerState.loading();
    try {
      final stands = await _client
          .from("lottery_stands")
          .select<PostgrestList>("*, constraint_levels(*), groups(*)")
          .withConverter<List<LotteryStandEntity>>((data) => data.map((e) => LotteryStandEntity.fromJson(e)).toList());

      value = StandControllerState.success(stands);
    } on PostgrestException catch (error) {
      value = StandControllerState.failure(error.message);
    }
  }
}
