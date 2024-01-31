import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/async_button_builder.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/translations.g.dart';
import 'stand_play_constraint_controller.dart';

@RoutePage()
class StandPlayConstraintFormView extends StatelessWidget {
  StandPlayConstraintFormView({super.key, required this.stand});

  final LotteryStandEntity stand;
  final _formKey = GlobalKey<FormBuilderState>();
  final _standPlayConstraintController = getIt.get<StandPlayConstraintController>();

  Future<void> onSubmit(BuildContext context) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final fromNumber = _formKey.currentState?.value["fromNumber"] as String;
    final toNumber = _formKey.currentState?.value["toNumber"] as String?;
    final amount = _formKey.currentState?.value["amount"] as String;
    final maxAmount = _formKey.currentState?.value["maxAmount"] as String;

    return _standPlayConstraintController.update(
      stand: stand,
      fromPlayNumber: num.parse(fromNumber),
      toPlayNumber: toNumber == null ? null : num.tryParse(toNumber),
      constraintAmount: num.parse(amount),
      constraintMaxAmount: num.parse(maxAmount),
      onSuccess: () {
        context.router.pop();
        _standPlayConstraintController.fetch(stand);
      },
      onFailure: (message) => context.showSnackBar(SnackBar(content: Text(message))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.stand.constraintForm.title),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: _standPlayConstraintController.watch(
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
          padding: p12,
          children: [
            Row(
              children: [
                Flexible(
                  child: FormBuilderTextField(
                    name: 'fromNumber',
                    decoration: InputDecoration(label: Text(t.stand.constraintForm.from)),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.integer(),
                      FormBuilderValidators.min(0),
                    ]),
                  ),
                ),
                hgap(10),
                Flexible(
                  child: FormBuilderTextField(
                    name: 'toNumber',
                    decoration: InputDecoration(label: Text(t.stand.constraintForm.to)),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.integer(),
                    ]),
                  ),
                ),
              ],
            ),
            vgap(10),
            Row(
              children: [
                Flexible(
                  child: FormBuilderTextField(
                    name: 'amount',
                    decoration: InputDecoration(label: Text(t.stand.constraintForm.amount)),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.integer(),
                    ]),
                  ),
                ),
                hgap(10),
                Flexible(
                  child: FormBuilderTextField(
                    name: 'maxAmount',
                    decoration: InputDecoration(label: Text(t.stand.constraintForm.maxAmount)),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.integer(),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
