import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/themes/async_button_builder.dart';
import '../../i18n/strings.g.dart';
import 'lottery_controller.dart';

@RoutePage()
class LotteryFormView extends StatelessWidget {
  LotteryFormView({super.key, required this.lottery});

  final LotteryEntity lottery;
  final _lotteryController = getIt.get<LotteryController>();
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> onSubmit(BuildContext context) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final name = _formKey.currentState?.value["name"] as String;
    final quinielaFirstPrize = _formKey.currentState?.value["quinielaFirstPrize"] as String;
    final quinielaSecondPrize = _formKey.currentState?.value["quinielaSecondPrize"] as String;
    final quinielaThirdPrize = _formKey.currentState?.value["quinielaThirdPrize"] as String;
    final paleFirstSecondPrize = _formKey.currentState?.value["paleFirstSecondPrize"] as String;
    final paleFirstThirdPrize = _formKey.currentState?.value["paleFirstThirdPrize"] as String;
    final paleSecondThirdPrize = _formKey.currentState?.value["paleSecondThirdPrize"] as String;
    final tripletaPrice = _formKey.currentState?.value["tripletaPrice"] as String;
    final timeOpen = _formKey.currentState?.value["timeOpen"] as DateTime;
    final timeClose = _formKey.currentState?.value["timeClose"] as DateTime;
    final active = _formKey.currentState?.value["active"] as bool;

    return _lotteryController.update(
      lottery: lottery.copyWith(
        name: name,
        quinielaFirstPrize: num.parse(quinielaFirstPrize),
        quinielaSecondPrize: num.parse(quinielaSecondPrize),
        quinielaThirdPrize: num.parse(quinielaThirdPrize),
        paleFirstSecondPrize: num.parse(paleFirstSecondPrize),
        paleFirstThirdPrize: num.parse(paleFirstThirdPrize),
        paleSecondThirdPrize: num.parse(paleSecondThirdPrize),
        tripletaPrice: num.parse(tripletaPrice),
        timeOpen: "${timeOpen.hour}:${timeOpen.minute}",
        timeClose: "${timeClose.hour}:${timeClose.minute}",
        status: active,
      ),
      onFailure: (message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            showCloseIcon: true,
          ),
        );

        context.router.pop();
      },
      onSuccess: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(t.lottery.success),
            showCloseIcon: true,
          ),
        );

        context.router.pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lottery.name),
      ),
      body: FormBuilder(
        key: _formKey,
        initialValue: {
          "name": lottery.name,
          "quinielaFirstPrize": lottery.quinielaFirstPrize.toStringAsFixed(0),
          "quinielaSecondPrize": lottery.quinielaSecondPrize.toStringAsFixed(0),
          "quinielaThirdPrize": lottery.quinielaThirdPrize.toStringAsFixed(0),
          "paleFirstSecondPrize": lottery.paleFirstSecondPrize.toStringAsFixed(0),
          "paleFirstThirdPrize": lottery.paleFirstThirdPrize.toStringAsFixed(0),
          "paleSecondThirdPrize": lottery.paleSecondThirdPrize.toStringAsFixed(0),
          "tripletaPrice": lottery.tripletaPrice.toStringAsFixed(0),
          "timeOpen": DateTime.parse("2000-01-01 ${lottery.timeOpen}"),
          "timeClose": DateTime.parse("2000-01-01 ${lottery.timeClose}"),
          "active": lottery.status,
        },
        child: ListView(
          padding: p12,
          children: [
            FormBuilderTextField(
              name: 'name',
              decoration: InputDecoration(label: Text(t.lottery.name)),
              validator: FormBuilderValidators.required(),
            ),
            vgap(10),
            FormBuilderDateTimePicker(
              name: 'timeOpen',
              inputType: InputType.time,
              decoration: InputDecoration(label: Text(t.lottery.timeOpen)),
              validator: FormBuilderValidators.required(),
            ),
            vgap(10),
            FormBuilderDateTimePicker(
              name: 'timeClose',
              inputType: InputType.time,
              decoration: InputDecoration(label: Text(t.lottery.timeClose)),
              validator: FormBuilderValidators.required(),
            ),
            const Divider(height: 30),
            FormBuilderTextField(
              name: 'quinielaFirstPrize',
              decoration: InputDecoration(label: Text(t.lottery.quinielaFirstPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.integer(),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'quinielaSecondPrize',
              decoration: InputDecoration(label: Text(t.lottery.quinielaSecondPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.integer(),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'quinielaThirdPrize',
              decoration: InputDecoration(label: Text(t.lottery.quinielaThirdPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.integer(),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'paleFirstSecondPrize',
              decoration: InputDecoration(label: Text(t.lottery.paleFirstSecondPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.integer(),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'paleFirstThirdPrize',
              decoration: InputDecoration(label: Text(t.lottery.paleFirstThirdPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.integer(),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'paleSecondThirdPrize',
              decoration: InputDecoration(label: Text(t.lottery.paleSecondThirdPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.integer(),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'tripletaPrice',
              decoration: InputDecoration(label: Text(t.lottery.tripletaPrice)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.integer(),
              ]),
            ),
            vgap(10),
            FormBuilderSwitch(
              name: 'active',
              title: Text(t.lottery.active),
              validator: FormBuilderValidators.required(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: _lotteryController.watch(
                (context, state) => AsyncButtonBuilder(
                  idleStateWidget: Text(t.common.save),
                  state: state.isActionLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                  buttonWidget: (stateWidget) => FilledButton(onPressed: () => onSubmit(context), child: stateWidget),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
