import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';

import '../features/settings/thememode_controller.dart';
import '../i18n/translations.g.dart';
import 'constants.dart';
import 'extensions/value_notifier.dart';
import 'router/router_observers.dart';
import 'service_locator/get_it.dart';
import 'services.dart';
import 'themes/dark_theme.dart';
import 'themes/light_theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeModeController = getIt.get<ThemeModeController>();

    return themeModeController.watch(
      (context, themeMode) => MaterialApp.router(
        title: appTitle,
        theme: ThemeData().lightTheme,
        darkTheme: ThemeData().darkTheme,
        routerConfig: router.config(
          reevaluateListenable: authController,
          navigatorObservers: () => [
            DefaultObserver(),
          ],
        ),
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        themeMode: themeMode,
        localizationsDelegates: const [
          ...GlobalMaterialLocalizations.delegates,
          FormBuilderLocalizationsDelegate(),
        ],
      ),
    );
  }
}
