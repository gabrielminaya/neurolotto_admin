import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/router/router.gr.dart';
import '../../i18n/translations.g.dart';

@RoutePage()
class SaleView extends StatelessWidget {
  const SaleView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        SaleSummaryRoute(),
        SaleDetailRoute(),
      ],
      builder: (context, child, tabController) => Column(
        children: [
          TabBar(
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            controller: tabController,
            tabs: [
              Tab(text: t.sales.saleSummary),
              Tab(text: t.sales.saleDetail),
            ],
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
