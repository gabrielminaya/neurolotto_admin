import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../../core/async_button_builder.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/entities/lottery_schedule_date_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/strings.g.dart';
import 'lottery_schedule_date_controller.dart';

@RoutePage()
class LotteryScheduleDateFormView extends StatelessWidget {
  LotteryScheduleDateFormView({super.key, required this.lottery});

  final LotteryEntity lottery;
  final _lotteryScheduleDateController = getIt.get<LotteryScheduleDateController>();
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> onSubmit(BuildContext context) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final effectiveDate = _formKey.currentState?.value["effectiveDate"] as DateTime;
    final openingTime = _formKey.currentState?.value["openingTime"] as DateTime;
    final closingTime = _formKey.currentState?.value["closingTime"] as DateTime;
    final isClosed = _formKey.currentState?.value["isClosed"] as bool;

    return _lotteryScheduleDateController.createScheduleDate(
      scheduleDate: LotteryScheduleDateEntity(
        lotteryId: lottery.id,
        effectiveDate: effectiveDate,
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
        title: Text(t.lottery.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: _lotteryScheduleDateController.watch(
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
        child: ListView(
          padding: p16,
          children: [
            FormBuilderDateTimePicker(
              name: 'effectiveDate',
              inputType: InputType.date,
              locale: const Locale('en', 'US'),
              decoration: InputDecoration(
                label: Text(t.lottery.effectiveDate),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
            ),
            vgap(10),
            FormBuilderDateTimePicker(
              name: 'openingTime',
              inputType: InputType.time,
              locale: const Locale('en', 'US'),
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
              initialValue: false,
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
