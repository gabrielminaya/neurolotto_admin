import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/constraint_level_entity.dart';
import '../../core/entities/group_entity.dart';
import '../../core/entities/lottery_stand_entity.dart';

part 'stand_form_controller.freezed.dart';

@Freezed()
class StandFormControllerState with _$StandFormControllerState {
  const factory StandFormControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isUpdateLoading,
    @Default([]) List<GroupEntity> groups,
    @Default([]) List<ConstraintLevelEntity> constraints,
  }) = _StandFormControllerState;
}

@Injectable()
class StandFormController extends ValueNotifier<StandFormControllerState> {
  StandFormController(
    this._client,
  ) : super(const StandFormControllerState());

  final SupabaseClient _client;

  Future<void> initialize() async {
    final result = await Future.wait([
      _client
          .from("groups")
          .select<PostgrestList>()
          .withConverter<List<GroupEntity>>((data) => data.map((e) => GroupEntity.fromJson(e)).toList()),
      _client.from("constraint_levels").select<PostgrestList>().withConverter<List<ConstraintLevelEntity>>(
          (data) => data.map((e) => ConstraintLevelEntity.fromJson(e)).toList()),
    ]);

    value = value.copyWith(
      groups: result[0] as List<GroupEntity>,
      constraints: result[1] as List<ConstraintLevelEntity>,
    );
  }

  Future<void> update({
    required LotteryStandEntity stand,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isUpdateLoading: true);

    try {
      await _client.from("lottery_stands").update({
        "name": stand.name,
        "group_id": stand.group.id,
        "constraint_level_id": stand.constraintLevel.id,
        "active": stand.active,
        "maximum_sale_amount": stand.maximumSaleAmount,
        "maximum_cancellation_amount": stand.maximumCancellationAmount,
        "quiniela_max_amount": stand.quinielaMaxAmount,
        "pale_max_amount": stand.paleMaxAmount,
        "tripleta_max_amount": stand.tripletaMaxAmount,
      }).eq("id", stand.id);

      onSuccess();
    } on PostgrestException catch (error) {
      onFailure(error.message);
    } finally {
      value = value.copyWith(isUpdateLoading: false);
    }
  }
}
