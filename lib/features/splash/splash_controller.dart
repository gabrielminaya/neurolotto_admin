import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/consortium_entity.dart';
import '../../core/services.dart';

part 'splash_controller.freezed.dart';

@Freezed()
sealed class SplashControllerState with _$SplashControllerState {
  const factory SplashControllerState.initial() = _SplashControllerInitial;
  const factory SplashControllerState.loading() = _SplashControllerLoading;
  const factory SplashControllerState.failure(String message) = _SplashControllerFailure;
  const factory SplashControllerState.success(ConsortiumEntity? consortium) = _SplashControllerSuccess;
}

@Injectable()
class SplashController extends ValueNotifier<SplashControllerState> {
  SplashController(this._client) : super(const SplashControllerState.initial());

  final SupabaseClient _client;

  Future<void> initialize({required void Function() onFoundConsortium}) async {
    value = const SplashControllerState.loading();

    try {
      final consortium = await _client
          .from("consortiums")
          .select<PostgrestMap?>()
          .contains("admins", [authController.user?.id])
          .limit(1)
          .single()
          .withConverter<ConsortiumEntity?>((data) {
            if (data == null) {
              return null;
            }

            if (data.isEmpty) {
              return null;
            }

            return ConsortiumEntity.fromJson(data);
          });

      await authController.initialize(consortium: consortium);

      if (consortium != null) {
        onFoundConsortium();
      }

      value = SplashControllerState.success(consortium);
    } on PostgrestException catch (error) {
      if (error.code == "PGRST116") {
        value = const SplashControllerState.success(null);
        return;
      }

      value = SplashControllerState.failure(error.message);
    }
  }
}
