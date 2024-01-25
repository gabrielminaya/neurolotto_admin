import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/entities/sale_detail_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/translations.g.dart';
import 'sale_detail_controller.dart';

@RoutePage()
class SaleDetailView extends StatefulWidget {
  const SaleDetailView({super.key});

  @override
  State<SaleDetailView> createState() => _SaleDetailViewState();
}

class _SaleDetailViewState extends State<SaleDetailView> {
  final _saleDetailController = getIt.get<SaleDetailController>();
  final _currentDate = ValueNotifier(DateTime.now());

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        _saleDetailController.initialize();
        _saleDetailController.fetch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _saleDetailController.fetch(atDate: _currentDate.value),
        child: const Icon(Icons.refresh),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: p12,
            sliver: SliverToBoxAdapter(
              child: Row(children: [
                Flexible(
                  child: FormBuilderDateTimePicker(
                    name: 'date',
                    initialValue: _currentDate.value,
                    inputType: InputType.date,
                    format: DateFormat("dd/MM/yyyy"),
                    decoration: InputDecoration(labelText: t.sales.date),
                    onChanged: (atDate) => _saleDetailController.fetch(atDate: atDate),
                  ),
                ),
                hgap(10),
                Flexible(
                  child: _saleDetailController.watch(
                    (context, state) {
                      if (state.isInitializing) {
                        return FormBuilderTextField(
                          name: 'lotteryStand',
                          readOnly: true,
                          decoration: const InputDecoration(
                            label: Center(child: Padding(padding: p12, child: LinearProgressIndicator())),
                          ),
                        );
                      }

                      final items = state.lotteryStands.map((e) {
                        return DropdownMenuItem(value: e, child: Text(e.name));
                      }).toList();

                      items.insert(0, DropdownMenuItem(value: null, child: Text(t.sales.all)));

                      return DropdownButtonFormField<LotteryStandEntity?>(
                        value: state.selectedLotteryStand,
                        decoration: InputDecoration(labelText: t.sales.bank),
                        items: items,
                        onChanged: (standOrNull) => _saleDetailController.fetch(lotteryStand: standOrNull),
                      );
                    },
                  ),
                )
              ]),
            ),
          ),
          _saleDetailController.watch((context, state) {
            if (state.isLoading) {
              return const SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
            }

            if (state.failureMessage != null) {
              return SliverFillRemaining(child: Center(child: Text(state.failureMessage ?? "")));
            }

            return SliverPadding(
              padding: p12,
              sliver: SliverToBoxAdapter(
                child: SfDataGrid(
                  columnWidthMode: ColumnWidthMode.fill,
                  headerGridLinesVisibility: GridLinesVisibility.both,
                  gridLinesVisibility: GridLinesVisibility.both,
                  columns: [
                    GridColumn(
                      columnName: 'lottery',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(
                          t.sales.lotteries,
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
                  source: _SaleDatasource(sales: state.saleDetails),
                  rowHeight: 60,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _SaleDatasource extends DataGridSource {
  _SaleDatasource({required this.sales});

  final List<SaleDetailEntity> sales;

  @override
  List<DataGridRow> get rows {
    final salesCell = sales.map((sale) {
      return DataGridRow(cells: [
        DataGridCell(columnName: "lottery", value: sale.lotteryName),
        DataGridCell(columnName: "sales", value: sale.playAmount),
        DataGridCell(columnName: "prizes", value: sale.winningAmount),
        DataGridCell(columnName: "balance", value: sale.playAmount - sale.winningAmount),
      ]);
    }).toList();

    return [
      ...salesCell,
      DataGridRow(cells: [
        DataGridCell(columnName: "lottery", value: t.sales.total),
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
          value:
              sales.fold(0.0, (previousValue, element) => previousValue + (element.playAmount - element.winningAmount)),
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
