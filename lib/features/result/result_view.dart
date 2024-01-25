import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../core/router/router.gr.dart';
import '../../i18n/translations.g.dart';

@RoutePage()
class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        ResultLotteriesRoute(),
        ResultPlaysRoute(),
      ],
      builder: (context, child, tabController) => LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            TabBar(
              isScrollable: constraints.maxWidth < tabletBreakpoint ? false : true,
              tabAlignment: constraints.maxWidth < tabletBreakpoint ? TabAlignment.fill : TabAlignment.start,
              controller: tabController,
              tabs: [
                Tab(text: t.result.lotteryResult),
                Tab(text: t.result.lotteryWinners),
              ],
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
