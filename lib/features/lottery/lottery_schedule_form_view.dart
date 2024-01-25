import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../../core/async_button_builder.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_schedule_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/translations.g.dart';
import 'lottery_schedule_controller.dart';

@RoutePage()
class LotteryScheduleFormView extends StatelessWidget {
  LotteryScheduleFormView({super.key, required this.lotterySchedule});

  final LotteryScheduleEntity lotterySchedule;
  final _lotteryScheduleController = getIt.get<LotteryScheduleController>();
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> onSubmit(BuildContext context) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final openingTime = _formKey.currentState?.value["openingTime"] as DateTime;
    final closingTime = _formKey.currentState?.value["closingTime"] as DateTime;
    final isClosed = _formKey.currentState?.value["isClosed"] as bool;

    return _lotteryScheduleController.updateSchedule(
      schedule: lotterySchedule.copyWith(
        timeOpen: DateFormat('HH:mm').format(openingTime),
        timeClose: DateFormat('HH:mm').format(closingTime),
        isClosed: isClosed,
      ),
      onFailure: (message) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          showCloseIcon: true,
        ),
      ),
      onSuccess: () => context.router.pop(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DateFormat('EEEE').format(DateTime(2023, 1, lotterySchedule.lotteryDayId))),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: _lotteryScheduleController.watch(
                (context, state) => AsyncButtonBuilder(
                  idleStateWidget: Text(t.common.save),
                  state: state.isActionLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                  buttonWidget: (stateWidget) => FilledButton(
                    onPressed: () => onSubmit(context),
                    child: stateWidget,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: FormBuilder(
        key: _formKey,
        initialValue: {
          "openingTime": DateTime.parse("2023-01-0${lotterySchedule.lotteryDayId} ${lotterySchedule.timeOpen}"),
          "closingTime": DateTime.parse("2023-01-0${lotterySchedule.lotteryDayId} ${lotterySchedule.timeClose}"),
          "isClosed": lotterySchedule.isClosed,
        },
        child: ListView(
          padding: p16,
          children: [
            FormBuilderDateTimePicker(
              name: 'openingTime',
              inputType: InputType.time,
              locale: const Locale('en', 'US'),
              format: DateFormat('hh:mm a'),
              decoration: InputDecoration(
                label: Text(t.lottery.timeOpen),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            vgap(10),
            FormBuilderDateTimePicker(
              name: 'closingTime',
              inputType: InputType.time,
              format: DateFormat('hh:mm a'),
              locale: const Locale('en', 'US'),
              decoration: InputDecoration(
                label: Text(t.lottery.timeClose),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            vgap(10),
            FormBuilderSwitch(
              name: 'isClosed',
              title: Text(t.lottery.isClosed),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              validator: FormBuilderValidators.required(),
            ),
          ],
        ),
      ),
    );
  }
}
