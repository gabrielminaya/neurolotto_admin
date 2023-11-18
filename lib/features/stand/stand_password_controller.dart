import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/entities/lottery_stand_entity.dart';

@Injectable()
class StandPasswordController extends ValueNotifier<bool> {
  StandPasswordController(this._client) : super(false);

  final SupabaseClient _client;

  Future<void> changePassword({
    required LotteryStandEntity stand,
    required String password,
    required String confirmPassword,
    required ValueChanged<String> onFailure,
    required VoidCallback onSuccess,
  }) async {
    if (password != confirmPassword) {
      return onFailure("Password and confirm password doesnt match");
    }

    try {
      await _client.auth.admin.updateUserById(
        stand.id,
        attributes: AdminUserAttributes(password: password),
      );
      return onSuccess();
    } on AuthException catch (e) {
      return onFailure(e.message);
    }
  }
}
