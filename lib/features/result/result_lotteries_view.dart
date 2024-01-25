import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_result_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'result_lotteries_controller.dart';
import 'result_lotteries_form_view.dart';

@RoutePage()
class ResultLotteriesView extends StatefulWidget {
  const ResultLotteriesView({super.key});

  @override
  State<ResultLotteriesView> createState() => _ResultLotteriesViewState();
}

class _ResultLotteriesViewState extends State<ResultLotteriesView> {
  final _resultLotteriesController = getIt.get<ResultLotteriesController>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _resultLotteriesController.fetchResults(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: LayoutBuilder(
        builder: (_, constraints) => FloatingActionButton(
          heroTag: 'result',
          onPressed: () {
            if (constraints.maxWidth <= tabletBreakpoint) {
              router.push(ResultLotteriesFormRoute(result: null));
              return;
            }

            showDialog(
              context: context,
              builder: (context) => const AdaptativeDialog(
                child: ResultLotteriesFormView(result: null),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => CustomScrollView(
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
                  onChanged: (value) => _resultLotteriesController.fetchResults(date: value),
                ),
              ),
            ),
            _resultLotteriesController.watch((context, state) {
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

              if (state.results.isEmpty) {
                return SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(child: Text(t.result.empty)),
                );
              }
              return SliverPadding(
                padding: p12,
                sliver: SliverToBoxAdapter(
                  child: Wrap(
                    children: state.results.map((lotteryResult) {
                      return SizedBox(
                        width: constraints.maxWidth < 700 ? 400 : 500,
                        child: _LotteryResultCard(
                          lotteryResult: lotteryResult,
                          onEditResult: () {
                            if (constraints.maxWidth <= tabletBreakpoint) {
                              router.push(ResultLotteriesFormRoute(result: lotteryResult));
                              return;
                            }

                            showDialog(
                              context: context,
                              builder: (context) => AdaptativeDialog(
                                child: ResultLotteriesFormView(result: lotteryResult),
                              ),
                            );
                          },
                        ),
                      );
                    }).toList(),
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}

class _LotteryResultCard extends StatelessWidget {
  const _LotteryResultCard({
    required this.lotteryResult,
    required this.onEditResult,
  });

  final LotteryResultEntity lotteryResult;
  final VoidCallback onEditResult;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      shape: const OutlineInputBorder(),
      child: ListTile(
        isThreeLine: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(lotteryResult.lottery.name),
            Text(DateFormat("yyyy-MM-dd").format(lotteryResult.playDate)),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            Row(
              children: [
                Chip(label: Text(lotteryResult.firstPrizeNumber.toString())),
                hgap(5),
                Chip(label: Text(lotteryResult.secondPrizeNumber.toString())),
                hgap(5),
                Chip(label: Text(lotteryResult.thirdPrizeNumber.toString())),
                const Spacer(),
                TextButton(
                  onPressed: onEditResult,
                  style: TextButton.styleFrom(
                    foregroundColor: MaterialStateColor.resolveWith(
                      (states) => context.colorScheme.secondary,
                    ),
                  ),
                  child: Text(t.result.edit),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
