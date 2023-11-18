import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';

import '../../core/constants.dart';
import '../../core/entities/hot_number_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/number.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/strings.g.dart';
import 'dashboard_controller.dart';

@RoutePage()
class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final _dashboardController = getIt.get<DashboardController>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _dashboardController.fetchPlaysByFilters(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _dashboardController.watch(
        (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.failureMessage != null) {
            return Center(child: Text(state.failureMessage ?? ""));
          }

          final qunielas = state.hotNumbers.where((element) => element.lotteryName.contains("Q"));
          final pales = state.hotNumbers.where((element) => element.lotteryName.contains("P"));
          final tripletas = state.hotNumbers.where((element) => element.lotteryName.contains("T"));

          return LayoutBuilder(builder: (context, constraints) {
            return CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: p12,
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      children: [
                        Flexible(
                          child: _dashboardController.watch(
                            (context, state) => DropdownButtonFormField<int>(
                              value: state.dateOption,
                              decoration: InputDecoration(labelText: t.monitoring.dateForm),
                              items: [
                                DropdownMenuItem(value: 1, child: Text(t.monitoring.dateToday)),
                                DropdownMenuItem(value: 2, child: Text(t.monitoring.dateYesterday)),
                                DropdownMenuItem(value: 3, child: Text(t.monitoring.dateWeek)),
                                DropdownMenuItem(value: 4, child: Text(t.monitoring.dateMonth)),
                                DropdownMenuItem(value: 5, child: Text(t.monitoring.dateYear)),
                              ],
                              onChanged: (value) => _dashboardController
                                ..setFilters(dateOption: value)
                                ..fetchPlaysByFilters(),
                            ),
                          ),
                        ),
                        hgap(10),
                        Flexible(
                          child: _dashboardController.watch(
                            (context, state) => DropdownButtonFormField<bool>(
                              value: state.orderByQuantity,
                              decoration: InputDecoration(labelText: t.monitoring.orderForm),
                              items: [
                                DropdownMenuItem(value: true, child: Text(t.monitoring.orderQuantity)),
                                DropdownMenuItem(value: false, child: Text(t.monitoring.orderAmount)),
                              ],
                              onChanged: (orderByQuantity) => _dashboardController
                                ..setFilters(orderByQuantity: orderByQuantity)
                                ..fetchPlaysByFilters(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                if (state.hotNumbers.isEmpty) ...[
                  SliverFillRemaining(
                    child: Center(
                      child: Text(t.monitoring.playEmpty),
                    ),
                  ),
                ],
                if (qunielas.isNotEmpty) ...[
                  SliverToBoxAdapter(
                    child: ListTile(
                      title: Text(t.monitoring.quiniela),
                    ),
                  ),
                  SliverPadding(
                    padding: px12,
                    sliver: SliverAlignedGrid.count(
                      crossAxisCount: constraints.maxWidth < 700 ? 4 : 8,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: qunielas.length,
                      itemBuilder: (context, index) {
                        return _HotPlayContainer(hotNumber: qunielas.elementAt(index));
                      },
                    ),
                  ),
                ],
                if (pales.isNotEmpty) ...[
                  SliverToBoxAdapter(
                    child: ListTile(
                      title: Text(t.monitoring.pale),
                    ),
                  ),
                  SliverPadding(
                    padding: px12,
                    sliver: SliverAlignedGrid.count(
                      crossAxisCount: constraints.maxWidth < 700 ? 4 : 8,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: pales.length,
                      itemBuilder: (context, index) {
                        return _HotPlayContainer(hotNumber: pales.elementAt(index));
                      },
                    ),
                  ),
                ],
                if (tripletas.isNotEmpty) ...[
                  SliverToBoxAdapter(
                    child: ListTile(
                      title: Text(t.monitoring.tripleta),
                    ),
                  ),
                  SliverPadding(
                    padding: px12,
                    sliver: SliverAlignedGrid.count(
                      crossAxisCount: constraints.maxWidth < 700 ? 3 : 6,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: tripletas.length,
                      itemBuilder: (context, index) {
                        return _HotPlayContainer(hotNumber: tripletas.elementAt(index));
                      },
                    ),
                  ),
                ],
                const SliverToBoxAdapter(child: SizedBox(height: 200)),
              ],
            );
          });
        },
      ),
    );
  }
}

class _HotPlayContainer extends StatelessWidget {
  const _HotPlayContainer({required this.hotNumber});

  final HotNumberEntity hotNumber;

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: () {},
      label: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${hotNumber.playNumber.toLotteryFormat} (${hotNumber.playQuantity})",
            ),
            Text(
              NumberFormat.currency(symbol: "").format(hotNumber.totalAmount),
              style: context.textTheme.labelSmall?.copyWith(color: context.colorScheme.primary),
            ),
          ],
        ),
      ),
    );
  }
}
