import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/entities/lottery_result_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../core/themes/async_button_builder.dart';
import '../../i18n/strings.g.dart';
import 'result_controller.dart';

@RoutePage()
class ResultView extends StatefulWidget {
  const ResultView({super.key});

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  final _resultController = getIt.get<ResultController>();
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _resultController
        ..initialize()
        ..fetchResults(),
    );
  }

  Future<void> onAddResult(BuildContext context, LotteryResultEntity? result) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final date = _formKey.currentState?.value["date"] as DateTime;
    final lottery = _formKey.currentState?.value["lottery"] as LotteryEntity;
    final resultOne = _formKey.currentState?.value["resultOne"] as String;
    final resultTwo = _formKey.currentState?.value["resultTwo"] as String;
    final resultThree = _formKey.currentState?.value["resultThree"] as String;

    if (result == null) {
      return _resultController.add(
        result: LotteryResultEntity(
          id: "",
          playDate: date,
          lottery: lottery,
          firstPrizeNumber: num.parse(resultOne),
          secondPrizeNumber: num.parse(resultTwo),
          thirdPrizeNumber: num.parse(resultThree),
        ),
        onFailure: (message) {
          router.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              showCloseIcon: true,
            ),
          );
        },
        onSuccess: () {
          router.pop();
        },
      );
    }

    return _resultController.update(
      result: result.copyWith(
        playDate: date,
        lottery: lottery,
        firstPrizeNumber: num.parse(resultOne),
        secondPrizeNumber: num.parse(resultTwo),
        thirdPrizeNumber: num.parse(resultThree),
      ),
      onFailure: (message) {
        router.pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            showCloseIcon: true,
          ),
        );
      },
      onSuccess: () => router.pop(),
    );
  }

  Future<void> showResultFormDialog({
    required BuildContext context,
    LotteryResultEntity? result,
  }) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(
          child: Text(result == null ? t.result.add : t.result.edit),
        ),
        content: _resultController.watch(
          (context, state) => FormBuilder(
            key: _formKey,
            initialValue: {
              "date": result?.playDate,
              "lottery": result?.lottery,
              "resultOne": result?.firstPrizeNumber.toStringAsFixed(0),
              "resultTwo": result?.secondPrizeNumber.toStringAsFixed(0),
              "resultThree": result?.thirdPrizeNumber.toStringAsFixed(0),
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FormBuilderDateTimePicker(
                  name: 'date',
                  inputType: InputType.date,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime.now(),
                  decoration: InputDecoration(label: Text(t.result.date)),
                  validator: FormBuilderValidators.required(),
                ),
                vgap(10),
                FormBuilderDropdown<LotteryEntity>(
                  name: 'lottery',
                  decoration: InputDecoration(label: Text(t.result.lottery)),
                  validator: FormBuilderValidators.required(),
                  items: state.lotteries.map((lottery) {
                    return DropdownMenuItem(
                      value: lottery,
                      child: Text(lottery.name),
                    );
                  }).toList(),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'resultOne',
                  decoration: InputDecoration(label: Text(t.result.firstPrize)),
                  validator: FormBuilderValidators.required(),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'resultTwo',
                  decoration: InputDecoration(label: Text(t.result.secondPrize)),
                  validator: FormBuilderValidators.required(),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'resultThree',
                  decoration: InputDecoration(label: Text(t.result.thirdPrize)),
                  validator: FormBuilderValidators.required(),
                ),
                vgap(20),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () => context.router.pop(),
                        child: Text(t.common.back),
                      ),
                    ),
                    hgap(5),
                    Expanded(
                      child: AsyncButtonBuilder(
                        idleStateWidget: Text(result == null ? t.result.add : t.result.edit),
                        state: state.isLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                        buttonWidget: (stateWidget) => FilledButton(
                          onPressed: () => onAddResult(context, result),
                          child: stateWidget,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => showResultFormDialog(context: context, result: null),
        child: const Icon(Icons.add),
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
                  onChanged: (value) => _resultController.fetchResults(date: value),
                ),
              ),
            ),
            _resultController.watch((context, state) {
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
                          onEditResult: () => showResultFormDialog(context: context, result: lotteryResult),
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
