import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

extension LightTheme on ThemeData {
  ThemeData get lightTheme {
    final theme = FlexThemeData.light(
      scheme: FlexScheme.brandBlue,
      surfaceMode: FlexSurfaceMode.level,
      blendLevel: 1,
      bottomAppBarElevation: 2.0,
      tabBarStyle: FlexTabBarStyle.forAppBar,
      lightIsWhite: true,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 6,
        blendOnColors: false,
        useTextTheme: true,
        useM2StyleDividerInM3: true,
        adaptiveRemoveElevationTint: FlexAdaptive.excludeWebAndroidFuchsia(),
        adaptiveElevationShadowsBack: FlexAdaptive.excludeWebAndroidFuchsia(),
        adaptiveAppBarScrollUnderOff: FlexAdaptive.excludeWebAndroidFuchsia(),
        defaultRadius: 6.0,
        adaptiveRadius: FlexAdaptive.excludeWebAndroidFuchsia(),
        defaultRadiusAdaptive: 12.0,
        elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
        elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
        outlinedButtonOutlineSchemeColor: SchemeColor.primary,
        toggleButtonsBorderSchemeColor: SchemeColor.primary,
        segmentedButtonSchemeColor: SchemeColor.primary,
        segmentedButtonBorderSchemeColor: SchemeColor.primary,
        unselectedToggleIsColored: true,
        sliderValueTinted: true,
        inputDecoratorSchemeColor: SchemeColor.primary,
        inputDecoratorBackgroundAlpha: 19,
        inputDecoratorUnfocusedHasBorder: true,
        inputDecoratorFocusedBorderWidth: 1.0,
        inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
        fabUseShape: true,
        fabRadius: 12.0,
        fabSchemeColor: SchemeColor.tertiary,
        cardRadius: 6.0,
        popupMenuRadius: 6.0,
        popupMenuElevation: 3.0,
        alignedDropdown: true,
        dialogRadius: 6.0,
        useInputDecoratorThemeInDialogs: true,
        datePickerHeaderBackgroundSchemeColor: SchemeColor.primary,
        snackBarBackgroundSchemeColor: SchemeColor.primary,
        snackBarActionSchemeColor: SchemeColor.onPrimary,
        appBarBackgroundSchemeColor: SchemeColor.surface,
        appBarScrolledUnderElevation: 1.0,
        drawerRadius: 4.0,
        drawerElevation: 1.0,
        drawerIndicatorSchemeColor: SchemeColor.primary,
        bottomSheetRadius: 6.0,
        bottomSheetElevation: 2.0,
        bottomSheetModalElevation: 4.0,
        bottomNavigationBarMutedUnselectedLabel: false,
        bottomNavigationBarMutedUnselectedIcon: false,
        menuRadius: 6.0,
        menuElevation: 3.0,
        menuBarRadius: 0.0,
        menuBarElevation: 1.0,
        menuBarShadowColor: Color(0x00000000),
        navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
        navigationBarMutedUnselectedLabel: false,
        navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationBarMutedUnselectedIcon: false,
        navigationBarIndicatorSchemeColor: SchemeColor.primary,
        navigationBarIndicatorOpacity: 1.00,
        navigationBarIndicatorRadius: 6.0,
        navigationBarElevation: 1.0,
        navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
        navigationRailMutedUnselectedLabel: false,
        navigationRailSelectedIconSchemeColor: SchemeColor.onPrimary,
        navigationRailMutedUnselectedIcon: false,
        navigationRailIndicatorSchemeColor: SchemeColor.primary,
        navigationRailIndicatorOpacity: 1.00,
        navigationRailIndicatorRadius: 6.0,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
    );

    return theme;
  }
}