import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../core/constants.dart';
import '../../core/entities/sale_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/strings.g.dart';
import 'sale_controller.dart';

@RoutePage()
class SaleView extends StatefulWidget {
  const SaleView({super.key});

  @override
  State<SaleView> createState() => _SaleViewState();
}

class _SaleViewState extends State<SaleView> {
  final _saleController = getIt.get<SaleController>();
  final _currentOption = ValueNotifier(1);

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _saleController
        ..initialize()
        ..fetch(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        heroTag: 'sale',
        onPressed: () => _saleController.fetch(),
        child: const Icon(Icons.refresh),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: p12,
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Flexible(
                    child: FormBuilderDateTimePicker(
                      name: 'date',
                      decoration: InputDecoration(labelText: t.sales.date),
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime.now(),
                      initialValue: DateTime.now(),
                      inputType: InputType.date,
                      format: DateFormat("dd/MM/yyyy"),
                      onChanged: (value) => _saleController.fetch(atDate: value),
                    ),
                  ),
                  hgap(10),
                  Flexible(
                    child: _currentOption.watch(
                      (context, initialValue) => FormBuilderDropdown<int>(
                        name: 'options',
                        initialValue: initialValue,
                        onChanged: (value) {
                          _currentOption.value = value ?? 1;

                          if (value == 1) {
                            _saleController.fetch();
                          }
                        },
                        decoration: InputDecoration(labelText: t.sales.options),
                        items: [
                          DropdownMenuItem(value: 1, child: Text(t.sales.all)),
                          DropdownMenuItem(value: 2, child: Text(t.sales.groups)),
                          DropdownMenuItem(value: 3, child: Text(t.sales.stand)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: px12,
            sliver: SliverToBoxAdapter(
              child: _currentOption.watch((context, state) {
                if (state == 2) {
                  return _saleController.watch(
                    (context, state) => FormBuilderDropdown(
                      name: 'group',
                      decoration: InputDecoration(labelText: t.sales.groups),
                      items:
                          state.groups.map((group) => DropdownMenuItem(value: group, child: Text(group.name))).toList(),
                      onChanged: (value) => _saleController.fetch(group: value),
                    ),
                  );
                }

                if (state == 3) {
                  return _saleController.watch(
                    (context, state) => FormBuilderDropdown(
                      name: 'stand',
                      decoration: InputDecoration(labelText: t.sales.stand),
                      items: state.lotteryStands
                          .map((stand) => DropdownMenuItem(value: stand, child: Text(stand.name)))
                          .toList(),
                      onChanged: (value) => _saleController.fetch(lotteryStand: value),
                    ),
                  );
                }

                return const SizedBox.shrink();
              }),
            ),
          ),
          SliverPadding(
            padding: p12,
            sliver: SliverToBoxAdapter(
              child: _saleController.watch((context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.failureMessage != null) {
                  return Center(child: Text(state.failureMessage ?? ""));
                }

                return SfDataGrid(
                  columnWidthMode: ColumnWidthMode.fill,
                  headerGridLinesVisibility: GridLinesVisibility.both,
                  gridLinesVisibility: GridLinesVisibility.both,
                  columns: [
                    GridColumn(
                      columnName: 'stand',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(
                          t.sales.stand,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    GridColumn(
                      columnName: 'sales',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(
                          t.sales.sales,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    GridColumn(
                      columnName: 'prizes',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(
                          t.sales.prizes,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    GridColumn(
                      columnName: 'balance',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(
                          t.sales.balance,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                  source: _SaleDatasource(sales: state.sales),
                  rowHeight: 60,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class _SaleDatasource extends DataGridSource {
  _SaleDatasource({required this.sales});

  final List<SaleEntity> sales;

  @override
  List<DataGridRow> get rows {
    final salesCell = sales.map((sale) {
      return DataGridRow(cells: [
        DataGridCell(columnName: "stand", value: sale.lotteryStandName),
        DataGridCell(columnName: "sales", value: sale.playAmount),
        DataGridCell(columnName: "prizes", value: sale.winningAmount),
        DataGridCell(columnName: "balance", value: sale.playAmount - sale.winningAmount),
      ]);
    }).toList();

    return [
      ...salesCell,
      DataGridRow(cells: [
        DataGridCell(columnName: "stand", value: t.sales.total),
        DataGridCell(
          columnName: "sales",
          value: sales.fold(0.0, (previousValue, element) => previousValue + element.playAmount),
        ),
        DataGridCell(
          columnName: "prizes",
          value: sales.fold(0.0, (previousValue, element) => previousValue + element.winningAmount),
        ),
        DataGridCell(
          columnName: "balance",
          value: sales.fold(
            0.0,
            (previousValue, element) => previousValue + (element.playAmount - element.winningAmount),
          ),
        ),
      ])
    ];
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        return Container(
          alignment: e.value is num ? Alignment.centerRight : Alignment.centerLeft,
          padding: p16,
          child: Text(
            e.value is num ? NumberFormat.currency(symbol: "").format(e.value) : e.value.toString(),
            style: TextStyle(
              fontSize: 10,
              color: e.value.toString().contains("-") ? Colors.red : null,
              fontWeight: e.columnName == "balance" ? FontWeight.bold : null,
            ),
            overflow: TextOverflow.clip,
          ),
        );
      }).toList(),
    );
  }
}
