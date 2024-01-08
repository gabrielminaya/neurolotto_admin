import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/async_button_builder.dart';
import '../../core/constants.dart';
import '../../core/entities/group_entity.dart';
import '../../core/entities/group_prize_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/strings.g.dart';
import 'group_prize_lottery_controller.dart';

@RoutePage()
class GroupPrizeFormView extends StatelessWidget {
  GroupPrizeFormView({super.key, required this.prize, required this.group});

  final GroupEntity group;
  final GroupStandPrizeEntity prize;
  final _groupPrizeController = getIt.get<GroupPrizeLotteryController>();
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> onSubmit({required BuildContext context}) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final quinielaFirstPrize = _formKey.currentState?.value["quiniela_first_prize"];
    final quinielaSecondPrize = _formKey.currentState?.value["quiniela_second_prize"];
    final quinielaThirdPrize = _formKey.currentState?.value["quiniela_third_prize"];
    final paleFirstSecondPrize = _formKey.currentState?.value["paleFirstSecondPrize"];
    final paleFirstThirdPrize = _formKey.currentState?.value["paleFirstThirdPrize"];
    final paleSecondThirdPrize = _formKey.currentState?.value["paleSecondThirdPrize"];
    final tripletaPrize = _formKey.currentState?.value["tripletaPrize"];

    return _groupPrizeController.update(
      group: group,
      prize: prize.copyWith(
        quinielaFirstPrize: num.parse(quinielaFirstPrize),
        quinielaSecondPrize: num.parse(quinielaSecondPrize),
        quinielaThirdPrize: num.parse(quinielaThirdPrize),
        paleFirstSecondPrize: num.parse(paleFirstSecondPrize),
        paleFirstThirdPrize: num.parse(paleFirstThirdPrize),
        paleSecondThirdPrize: num.parse(paleSecondThirdPrize),
        tripletaPrize: num.parse(tripletaPrize),
      ),
      onSuccess: () {
        context.router.pop();
      },
      onFailure: (message) {
        context.showSnackBar(SnackBar(content: Text(message)));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(prize.lottery.name),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: _groupPrizeController.watch(
                (context, state) => AsyncButtonBuilder(
                  idleStateWidget: Text(t.common.save),
                  state: state.isActionLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                  buttonWidget: (stateWidget) =>
                      FilledButton(onPressed: () => onSubmit(context: context), child: stateWidget),
                ),
              ),
            )
          ],
        ),
      ),
      body: FormBuilder(
        key: _formKey,
        initialValue: {
          "quiniela_first_prize": prize.quinielaFirstPrize.toStringAsFixed(0),
          "quiniela_second_prize": prize.quinielaSecondPrize.toStringAsFixed(0),
          "quiniela_third_prize": prize.quinielaThirdPrize.toStringAsFixed(0),
          "paleFirstSecondPrize": prize.paleFirstSecondPrize.toStringAsFixed(0),
          "paleFirstThirdPrize": prize.paleFirstThirdPrize.toStringAsFixed(0),
          "paleSecondThirdPrize": prize.paleSecondThirdPrize.toStringAsFixed(0),
          "tripletaPrize": prize.tripletaPrize.toStringAsFixed(0),
        },
        child: ListView(
          padding: p16,
          children: [
            FormBuilderTextField(
              name: 'quiniela_first_prize',
              decoration: InputDecoration(label: Text(t.lottery.quinielaFirstPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
                FormBuilderValidators.integer(),
                FormBuilderValidators.min(0),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'quiniela_second_prize',
              decoration: InputDecoration(label: Text(t.lottery.quinielaSecondPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
                FormBuilderValidators.integer(),
                FormBuilderValidators.min(0),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'quiniela_third_prize',
              decoration: InputDecoration(label: Text(t.lottery.quinielaThirdPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
                FormBuilderValidators.integer(),
                FormBuilderValidators.min(0),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'paleFirstSecondPrize',
              decoration: InputDecoration(label: Text(t.lottery.paleFirstSecondPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
                FormBuilderValidators.integer(),
                FormBuilderValidators.min(0),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'paleFirstThirdPrize',
              decoration: InputDecoration(label: Text(t.lottery.paleFirstThirdPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
                FormBuilderValidators.integer(),
                FormBuilderValidators.min(0),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'paleSecondThirdPrize',
              decoration: InputDecoration(label: Text(t.lottery.paleSecondThirdPrize)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
                FormBuilderValidators.integer(),
                FormBuilderValidators.min(0),
              ]),
            ),
            vgap(10),
            FormBuilderTextField(
              name: 'tripletaPrize',
              decoration: InputDecoration(label: Text(t.lottery.tripletaPrice)),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
                FormBuilderValidators.integer(),
                FormBuilderValidators.min(0),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
