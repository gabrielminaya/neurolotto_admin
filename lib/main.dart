import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/app.dart';
import 'core/constants.dart';
import 'core/service_locator/get_it.dart';
import 'core/services.dart';
import 'i18n/translations.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: supabaseEndpoint, anonKey: supabaseKey);
  await configureDependencies();
  await authController.initialize();
  LocaleSettings.useDeviceLocale();

  runApp(TranslationProvider(child: const MainApp()));
}
