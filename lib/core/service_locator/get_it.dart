import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'get_it.config.dart';

final getIt = GetIt.instance;

@module
abstract class RegisterModule {
  @singleton
  SupabaseClient get supabase => Supabase.instance.client;

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@InjectableInit()
Future<void> configureDependencies() async => getIt.init();
