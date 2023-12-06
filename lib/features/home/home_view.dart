import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neurolotto_admin/core/extensions/context.dart';

import '../../core/router/router.gr.dart';
import '../../core/services.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
          icon: Icon(Icons.logout_outlined, color: context.colorScheme.error),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmallLayout = constraints.maxWidth < 700;

        return AutoTabsRouter(
          routes: const [
            DashboardRoute(),
            SaleRoute(),
            ResultRoute(),
            TicketRoute(),
          ],
          builder: (context, child) => Visibility(
            visible: isSmallLayout,
            replacement: Row(
              children: [
                NavigationRail(
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.dashboard),
                      label: Text("Monitoring"),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.attach_money),
                      label: Text("Sales"),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.show_chart),
                      label: Text("Results"),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.receipt),
                      label: Text("Tickets"),
                    ),
                  ],
                  selectedIndex: AutoTabsRouter.of(context).activeIndex,
                  onDestinationSelected: AutoTabsRouter.of(context).setActiveIndex,
                  labelType: NavigationRailLabelType.all,
                ),
                const VerticalDivider(),
                Expanded(
                  child: Scaffold(
                    appBar: buildAppBar(context),
                    body: child,
                  ),
                ),
              ],
            ),
            child: Scaffold(
              appBar: buildAppBar(context),
              drawer: NavigationDrawer(
                selectedIndex: 1,
                onDestinationSelected: (index) {},
                children: [
                  ListTile(
                    isThreeLine: true,
                    title: Text(authController.consortium?.name ?? ""),
                    subtitle: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(authController.user?.id ?? "", style: const TextStyle(fontSize: 10)),
                        Text(authController.user?.email ?? "", style: const TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                  const Divider(),
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.dashboard),
                    label: Text("Monitoring"),
                  ),
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.attach_money),
                    label: Text("Sales"),
                  ),
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.show_chart),
                    label: Text("Results"),
                  ),
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.receipt),
                    label: Text("Tickets"),
                  ),
                  const Divider(),
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.settings),
                    label: Text("Manage consortium"),
                  ),
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.settings),
                    label: Text("Manage lotteries"),
                  ),
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.settings),
                    label: Text("Manage groups"),
                  ),
                  const NavigationDrawerDestination(
                    icon: Icon(Icons.settings),
                    label: Text("Manage stands"),
                  ),
                ],
              ),
              body: child,
            ),
          ),
        );
      },
    );
  }
}
