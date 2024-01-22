import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/consortium_entity.dart';
import '../../core/services.dart';

part 'consortium_controller.freezed.dart';

@Freezed()
class ConsortiumControllerState with _$ConsortiumControllerState {
  const factory ConsortiumControllerState({
    @Default(false) bool isLoading,
    @Default(false) bool isUpdateLoading,
    @Default(null) String? failureMessage,
    @Default(null) ConsortiumEntity? consortium,
  }) = _ConsortiumControllerState;
}

@Injectable()
class ConsortiumController extends ValueNotifier<ConsortiumControllerState> {
  ConsortiumController(this._client) : super(const ConsortiumControllerState());

  final SupabaseClient _client;

  Future<void> fetch() async {
    value = value.copyWith(isLoading: true);
    try {
      final consortium = await _client
          .from("consortiums")
          .select<PostgrestMap?>()
          .eq("id", authController.consortium?.id)
          .limit(1)
          .single()
          .withConverter<ConsortiumEntity?>((data) => data == null ? null : ConsortiumEntity.fromJson(data));

      value = value.copyWith(consortium: consortium);
    } on PostgrestException catch (e) {
      value = value.copyWith(failureMessage: e.message);
    } finally {
      value = value.copyWith(isLoading: false);
    }
  }

  Future<void> update({
    required ConsortiumEntity consortium,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    value = value.copyWith(isUpdateLoading: true);

    try {
      await _client.from("consortiums").update({
        "name": consortium.name,
        "maximum_sale_amount": consortium.maximumSaleAmount,
        "quiniela_max_amount": consortium.quinielaMaxAmount,
        "pale_max_amount": consortium.paleMaxAmount,
        "tripleta_max_amount": consortium.tripletaMaxAmount,
      }).eq("id", value.consortium?.id);

      value = value.copyWith(consortium: consortium);
      authController.initialize(consortium: consortium);
      onSuccess();
    } on PostgrestException catch (e) {
      onFailure(e.message);
    } finally {
      value = value.copyWith(isUpdateLoading: false);
    }
  }
}
