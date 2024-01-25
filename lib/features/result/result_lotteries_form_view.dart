import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/async_button_builder.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/entities/lottery_result_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'result_lotteries_controller.dart';

@RoutePage()
class ResultLotteriesFormView extends StatefulWidget {
  const ResultLotteriesFormView({super.key, this.result});

  final LotteryResultEntity? result;

  @override
  State<ResultLotteriesFormView> createState() => _ResultLotteriesFormViewState();
}

class _ResultLotteriesFormViewState extends State<ResultLotteriesFormView> {
  final _resultLotteriesController = getIt.get<ResultLotteriesController>();
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _resultLotteriesController.initialize(),
    );
  }

  Future<void> onAddResult(BuildContext context, LotteryResultEntity? result) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final date = _formKey.currentState?.value["date"] as DateTime;
    final lottery = _formKey.currentState?.value["lottery"] as LotteryEntity;
    final resultOne = _formKey.currentState?.value["resultOne"] as String;
    final resultTwo = _formKey.currentState?.value["resultTwo"] as String;
    final resultThree = _formKey.currentState?.value["resultThree"] as String;

    final confirmation = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Center(child: Text(t.result.confirmation.title)),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Chip(label: Text(resultOne)),
            Chip(label: Text(resultTwo)),
            Chip(label: Text(resultThree)),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => context.router.pop(false),
            child: Text(t.result.confirmation.no),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: context.colorScheme.error),
            onPressed: () => context.router.pop(true),
            child: Text(t.result.confirmation.yes),
          ),
        ],
      ),
    );

    if (!(confirmation ?? false)) {
      return;
    }

    if (result == null) {
      return _resultLotteriesController.add(
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

    return _resultLotteriesController.update(
      result: result.copyWith(
        playDate: date,
        lottery: lottery,
        firstPrizeNumber: num.parse(resultOne),
        secondPrizeNumber: num.parse(resultTwo),
        thirdPrizeNumber: num.parse(resultThree),
      ),
      onFailure: (message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            showCloseIcon: true,
          ),
        );

        router.pop();
      },
      onSuccess: () => router.pop(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.result == null ? t.result.add : t.result.edit),
      ),
      body: _resultLotteriesController.watch(
        (context, state) {
          if (state.isResultLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.failureMessage != null) {
            return Center(child: Text(state.failureMessage ?? ""));
          }

          return FormBuilder(
            key: _formKey,
            initialValue: {
              "date": widget.result?.playDate,
              "lottery": widget.result?.lottery,
              "resultOne": widget.result?.firstPrizeNumber.toStringAsFixed(0),
              "resultTwo": widget.result?.secondPrizeNumber.toStringAsFixed(0),
              "resultThree": widget.result?.thirdPrizeNumber.toStringAsFixed(0),
            },
            child: ListView(
              padding: p12,
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
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.integer(),
                    FormBuilderValidators.min(1),
                    FormBuilderValidators.max(100),
                  ]),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'resultTwo',
                  decoration: InputDecoration(label: Text(t.result.secondPrize)),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.integer(),
                    FormBuilderValidators.min(1),
                    FormBuilderValidators.max(100),
                  ]),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'resultThree',
                  decoration: InputDecoration(label: Text(t.result.thirdPrize)),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.integer(),
                    FormBuilderValidators.min(1),
                    FormBuilderValidators.max(100),
                  ]),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: _resultLotteriesController.watch(
                (context, state) => AsyncButtonBuilder(
                  idleStateWidget: Text(widget.result == null ? t.result.add : t.result.edit),
                  state: state.isLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                  buttonWidget: (stateWidget) => FilledButton(
                    onPressed: () => onAddResult(context, widget.result),
                    child: stateWidget,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
