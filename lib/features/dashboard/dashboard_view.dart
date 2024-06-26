import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';

import '../../core/constants.dart';
import '../../core/entities/hot_number_entity.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/translations.g.dart';
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
      (_) {
        _dashboardController.initialize();
        _dashboardController.fetchPlaysByFilters();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _dashboardController.fetchPlaysByFilters(),
        child: const Icon(Icons.refresh),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => CustomScrollView(
          slivers: [
            SliverPadding(
              padding: p12,
              sliver: SliverToBoxAdapter(
                child: _FlexContainer(
                  children: [
                    FormBuilderDateTimePicker(
                      name: 'from',
                      decoration: InputDecoration(labelText: t.monitoring.dateForm),
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime.now(),
                      initialValue: DateTime.now(),
                      inputType: InputType.date,
                      format: DateFormat("dd/MM/yyyy"),
                      onChanged: (value) => _dashboardController.fetchPlaysByFilters(atDate: value),
                    ),
                    DropdownButtonFormField<bool>(
                      value: true,
                      decoration: InputDecoration(labelText: t.monitoring.orderForm),
                      items: [
                        DropdownMenuItem(value: true, child: Text(t.monitoring.orderQuantity)),
                        DropdownMenuItem(value: false, child: Text(t.monitoring.orderAmount)),
                      ],
                      onChanged: (orderByQuantity) =>
                          _dashboardController.fetchPlaysByFilters(orderByQuantity: orderByQuantity ?? true),
                    ),
                    _dashboardController.watch(
                      (context, state) {
                        if (state.isInitializing) {
                          return FormBuilderTextField(
                            name: 'from',
                            readOnly: true,
                            decoration: const InputDecoration(
                              label: Center(child: Padding(padding: p12, child: LinearProgressIndicator())),
                            ),
                          );
                        }

                        final items = state.lotteries.map(
                          (lottery) {
                            final child = Row(
                              children: [
                                Icon(
                                  Icons.store,
                                  color: (lottery.isClosed ?? false) ? Colors.red : Colors.green,
                                  size: 18,
                                ),
                                hgap(5),
                                Text(lottery.name),
                              ],
                            );

                            return DropdownMenuItem(value: lottery, child: child);
                          },
                        ).toList();

                        return DropdownButtonFormField<LotteryEntity>(
                          value: state.selectedLottery,
                          decoration: InputDecoration(labelText: t.monitoring.lottery),
                          items: items,
                          onChanged: (selectedLottery) => _dashboardController.fetchPlaysByFilters(
                            lottery: selectedLottery,
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            _dashboardController.watch(
              (context, state) {
                if (state.isLoading) {
                  return const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                if (state.failureMessage != null) {
                  return SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: Text(state.failureMessage ?? "")),
                  );
                }

                final qunielas = state.hotNumbers.where((element) => element.lotteryName.contains("Q"));
                final pales = state.hotNumbers.where((element) => element.lotteryName.contains("P"));
                final tripletas = state.hotNumbers.where((element) => element.lotteryName.contains("T"));

                if (state.hotNumbers.isEmpty) {
                  return SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Text(t.monitoring.playEmpty),
                    ),
                  );
                }

                return SliverList.list(
                  children: [
                    if (qunielas.isNotEmpty)
                      ListTile(
                        title: Text(t.monitoring.quiniela),
                      ),
                    AlignedGridView.count(
                      shrinkWrap: true,
                      padding: px12,
                      crossAxisCount: constraints.maxWidth < 700 ? 4 : 8,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: qunielas.length,
                      itemBuilder: (context, index) {
                        return _HotPlayContainer(hotNumber: qunielas.elementAt(index));
                      },
                    ),
                    if (pales.isNotEmpty)
                      ListTile(
                        title: Text(t.monitoring.pale),
                      ),
                    AlignedGridView.count(
                      shrinkWrap: true,
                      padding: px12,
                      crossAxisCount: constraints.maxWidth < 700 ? 4 : 8,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: pales.length,
                      itemBuilder: (context, index) {
                        return _HotPlayContainer(hotNumber: pales.elementAt(index));
                      },
                    ),
                    if (tripletas.isNotEmpty)
                      ListTile(
                        title: Text(t.monitoring.tripleta),
                      ),
                    AlignedGridView.count(
                      shrinkWrap: true,
                      padding: px12,
                      crossAxisCount: constraints.maxWidth < 700 ? 4 : 8,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: tripletas.length,
                      itemBuilder: (context, index) {
                        return _HotPlayContainer(hotNumber: tripletas.elementAt(index));
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _HotPlayContainer extends StatelessWidget {
  const _HotPlayContainer({required this.hotNumber});

  final HotNumberEntity hotNumber;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${hotNumber.playNumber} (${hotNumber.playQuantity})",
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

class _FlexContainer extends StatelessWidget {
  const _FlexContainer({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return Column(
          children: children.map((e) => Padding(padding: py4, child: e)).toList(),
        );
      }

      return Row(
        children: children.map((e) => Expanded(child: Padding(padding: px2, child: e))).toList(),
      );
    });
  }
}
