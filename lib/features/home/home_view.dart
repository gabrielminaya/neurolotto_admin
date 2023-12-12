import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neurolotto_admin/core/extensions/value_notifier.dart';
import 'package:neurolotto_admin/features/settings/thememode_controller.dart';

import '../../core/constants.dart';
import '../../core/extensions/context.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  HomeView({super.key});

  final themeModeController = getIt.get<ThemeModeController>();

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: const AutoLeadingButton(
        showIfChildCanPop: false,
      ),
      centerTitle: true,
      title: const Text("NeuroLotto"),
      actions: [
        IconButton(
          onPressed: () => authController.signOut(
            onSuccess: () => router.replaceAll([SignInRoute()]),
          ),
          icon: Icon(Icons.logout_outlined, color: context.colorScheme.error),
        ),
      ],
    );
  }

  List<(Icon, String)> buildDestinations() {
    return [
      (const Icon(Icons.dashboard), "Monitoring"),
      (const Icon(Icons.attach_money), "Sales"),
      (const Icon(Icons.show_chart), "Results"),
      (const Icon(Icons.settings), "Settings"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AutoTabsRouter(
          routes: const [
            DashboardRoute(),
            SaleRoute(),
            ResultRoute(),
            SettingsRoute(),
          ],
          builder: (context, child) => Visibility(
            visible: constraints.maxWidth < tabletBreakpoint,
            replacement: Row(
              children: [
                NavigationRail(
                  destinations:
                      buildDestinations().map((e) => NavigationRailDestination(icon: e.$1, label: Text(e.$2))).toList(),
                  selectedIndex: AutoTabsRouter.of(context).activeIndex,
                  onDestinationSelected: AutoTabsRouter.of(context).setActiveIndex,
                  labelType: NavigationRailLabelType.all,
                  trailing: themeModeController.watch(
                    (context, state) => Switch(
                      thumbIcon: MaterialStatePropertyAll(
                        Icon(state == ThemeMode.dark ? Icons.dark_mode : Icons.light_mode),
                      ),
                      value: state == ThemeMode.dark,
                      onChanged: (value) => themeModeController.value = value ? ThemeMode.dark : ThemeMode.light,
                    ),
                  ),
                ),
                const VerticalDivider(width: 1),
                Expanded(
                  child: Scaffold(
                    body: child,
                  ),
                ),
              ],
            ),
            child: Scaffold(
              bottomNavigationBar: NavigationBar(
                destinations: buildDestinations().map((e) => NavigationDestination(icon: e.$1, label: e.$2)).toList(),
                selectedIndex: AutoTabsRouter.of(context).activeIndex,
                onDestinationSelected: AutoTabsRouter.of(context).setActiveIndex,
              ),
              body: child,
            ),
          ),
        );
      },
    );
  }
}
