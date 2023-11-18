import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/router/router.gr.dart';
import '../../core/services.dart';
import 'home_navigation_drawer.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  int getSelectedIndex() {
    final path = router.current.path;

    debugPrint(path);

    if (path.contains(DashboardRoute.name)) {
      return 0;
    }

    if (path.contains(TicketRoute.name)) {
      return 1;
    }

    if (path.contains(LotteryRoute.name)) {
      return 3;
    }

    if (path.contains(GroupRoute.name)) {
      return 4;
    }

    if (path.contains(StandRoute.name)) {
      return 5;
    }

    return 0;
  }

  void onDestinationSelected(int index) async {
    if (index == 0) {
      return router.navigate(const DashboardRoute());
    }

    if (index == 1) {
      return router.navigate(const TicketRoute());
    }

    if (index == 2) {
      return router.navigate(const ConsortiumRoute());
    }

    if (index == 3) {
      return router.navigate(const LotteryRoute());
    }

    if (index == 4) {
      return router.navigate(const GroupRoute());
    }

    if (index == 5) {
      return router.navigate(const StandRoute());
    }
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: const AutoLeadingButton(
        showIfChildCanPop: false,
      ),
      title: const Text("NeuroLotto"),
      actions: [
        IconButton(
          onPressed: () => authController.signOut(
            onSuccess: () => router.replaceAll([SignInRoute()]),
          ),
          icon: const Icon(Icons.logout_outlined),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallLayout = constraints.maxWidth < 700;
        return Scaffold(
          body: Visibility(
            visible: isSmallLayout,
            replacement: Row(
              children: [
                HomeNavigationDrawer(
                  selectedIndex: getSelectedIndex(),
                  onDestinationSelected: onDestinationSelected,
                ),
                Expanded(
                  child: Scaffold(
                    appBar: buildAppBar(context),
                    body: const AutoRouter(),
                  ),
                ),
              ],
            ),
            child: Scaffold(
              appBar: buildAppBar(context),
              drawer: HomeNavigationDrawer(
                selectedIndex: getSelectedIndex(),
                onDestinationSelected: onDestinationSelected,
              ),
              body: const AutoRouter(),
            ),
          ),
        );
      },
    );
  }
}
