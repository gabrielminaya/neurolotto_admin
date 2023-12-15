import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/router/router.gr.dart';
import '../../i18n/strings.g.dart';

@RoutePage()
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsRouter.tabBar(
        routes: const [
          TicketRoute(),
          StandRoute(),
          GroupRoute(),
          LotteryRoute(),
          ConsortiumRoute(),
        ],
        builder: (context, child, tabController) => LayoutBuilder(
          builder: (context, constraints) => Scaffold(
            appBar: TabBar(
              controller: tabController,
              isScrollable: constraints.maxWidth < tabletBreakpoint ? false : true,
              tabAlignment: constraints.maxWidth < tabletBreakpoint ? TabAlignment.fill : TabAlignment.start,
              tabs: [
                Tab(text: t.settings.options.tickets),
                Tab(text: t.settings.options.stand),
                Tab(text: t.settings.options.group),
                Tab(text: t.settings.options.lottery),
                Tab(text: t.settings.options.consortium),
              ],
            ),
            body: child,
          ),
        ),
      ),
    );
  }
}
