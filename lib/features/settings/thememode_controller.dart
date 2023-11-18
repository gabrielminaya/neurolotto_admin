import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class ThemeModeController extends ValueNotifier<ThemeMode> {
  ThemeModeController() : super(ThemeMode.system);

  Future<void> toggleMode(Brightness brightness) async {
    value = brightness == Brightness.light ? ThemeMode.dark : ThemeMode.light;
  }
}
