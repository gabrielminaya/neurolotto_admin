import 'package:supabase_flutter/supabase_flutter.dart';

import '../features/auth/auth_controller.dart';
import 'router/router.dart';
import 'service_locator/get_it.dart';

AppRouter get router => getIt.get();

SupabaseClient get database => getIt.get();

AuthController get authController => getIt.get();
