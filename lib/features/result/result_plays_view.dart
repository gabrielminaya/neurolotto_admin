import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../core/constants.dart';
import '../../core/entities/result_play_entity.dart';
import '../../core/extensions/number.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/translations.g.dart';
import 'result_plays_controller.dart';

@RoutePage()
class ResultPlaysView extends StatefulWidget {
  const ResultPlaysView({super.key});

  @override
  State<ResultPlaysView> createState() => _ResultPlaysViewState();
}

class _ResultPlaysViewState extends State<ResultPlaysView> {
  final _resultPlaysController = getIt.get<ResultPlaysController>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _resultPlaysController.fetch(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _resultPlaysController.fetch(),
        child: const Icon(Icons.refresh),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: p12,
            sliver: SliverToBoxAdapter(
              child: FormBuilderDateTimePicker(
                name: 'date',
                decoration: InputDecoration(labelText: t.result.date),
                initialDate: DateTime.now(),
                firstDate: DateTime(2023),
                lastDate: DateTime.now(),
                initialValue: DateTime.now(),
                inputType: InputType.date,
                format: DateFormat("dd/MM/yyyy"),
                onChanged: (atDate) => _resultPlaysController.fetch(atDate: atDate),
              ),
            ),
          ),
          SliverPadding(
            padding: p12,
            sliver: _resultPlaysController.watch((context, state) {
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

              if (state.resultPlays.isEmpty) {
                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(child: Text(t.result.empty)),
                );
              }

              return SliverToBoxAdapter(
                child: SfDataGrid(
                  columnWidthMode: ColumnWidthMode.fill,
                  headerGridLinesVisibility: GridLinesVisibility.both,
                  gridLinesVisibility: GridLinesVisibility.both,
                  columns: [
                    GridColumn(
                      columnName: 'ticket',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(t.result.ticket),
                      ),
                    ),
                    GridColumn(
                      columnName: 'date',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(t.result.date),
                      ),
                    ),
                    GridColumn(
                      columnName: 'lottery',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(t.result.lottery),
                      ),
                    ),
                    GridColumn(
                      columnName: 'stand',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(t.result.stand),
                      ),
                    ),
                    GridColumn(
                      columnName: 'playNumber',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(t.result.play),
                      ),
                    ),
                    GridColumn(
                      columnName: 'playAmount',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(t.result.playAmount),
                      ),
                    ),
                    GridColumn(
                      columnName: 'balance',
                      label: Container(
                        alignment: Alignment.center,
                        child: Text(t.result.balance),
                      ),
                    ),
                  ],
                  source: ResultPlayDataSource(resultPlays: state.resultPlays),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

class ResultPlayDataSource extends DataGridSource {
  final List<ResultPlayEntity> resultPlays;
  ResultPlayDataSource({required this.resultPlays});

  @override
  List<DataGridRow> get rows {
    return resultPlays.map(
      (result) {
        return DataGridRow(cells: [
          DataGridCell<String>(columnName: 'ticket', value: result.sequenceNumber.toString().padLeft(10, "0")),
          DataGridCell<String>(columnName: 'date', value: DateFormat("hh:mm a").format(result.createdAt)),
          DataGridCell<String>(columnName: 'lottery', value: result.lotteryName),
          DataGridCell<String>(columnName: 'stand', value: result.lotteryStandName),
          DataGridCell<String>(columnName: 'playNumber', value: result.playNumber.toLotteryFormat),
          DataGridCell<num>(
            columnName: 'playAmount',
            value: result.playAmount,
          ),
          DataGridCell<num>(
            columnName: 'balance',
            value: result.winningAmount,
          )
        ]);
      },
    ).toList();
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        return Container(
          alignment: e.value is num ? Alignment.centerRight : Alignment.center,
          padding: p16,
          child: Text(
            e.value is num ? NumberFormat.currency(symbol: "").format(e.value) : e.value.toString(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: e.columnName == "balance" ? FontWeight.bold : null,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
    );
  }
}
