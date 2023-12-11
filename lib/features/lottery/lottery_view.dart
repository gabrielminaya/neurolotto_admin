import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../core/themes/async_button_builder.dart';
import '../../i18n/strings.g.dart';
import 'lottery_controller.dart';

@RoutePage()
class LotteryView extends StatefulWidget {
  const LotteryView({super.key});

  @override
  State<LotteryView> createState() => _LotteryViewState();
}

class _LotteryViewState extends State<LotteryView> {
  final _lotteryController = getIt.get<LotteryController>();
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _lotteryController.fetch(),
    );
  }

  Future<void> onSubmit(BuildContext context, LotteryEntity lottery) async {
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
        router.pop();
      },
      onSuccess: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(t.lottery.success),
            showCloseIcon: true,
          ),
        );
        router.pop();
      },
    );
  }

  Future<void> onEditDialog(BuildContext context, LotteryEntity lottery) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: SizedBox(
          height: context.appSize.height * .9,
          child: SingleChildScrollView(
            child: FormBuilder(
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
              child: Column(
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
                  ButtonBar(
                    children: [
                      OutlinedButton(
                        onPressed: () => router.back(),
                        child: Text(t.common.back),
                      ),
                      _lotteryController.watch(
                        (context, state) => AsyncButtonBuilder(
                          idleStateWidget: Text(t.common.save),
                          state: state.isActionLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                          buttonWidget: (stateWidget) =>
                              FilledButton(onPressed: () => onSubmit(context, lottery), child: stateWidget),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _lotteryController.watch((context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.failureMessage != null) {
          return Center(child: Text(state.failureMessage ?? ""));
        }

        return SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) => Padding(
              padding: p8,
              child: Wrap(
                children: state.lotteries.map((e) {
                  return SizedBox(
                    width: 400,
                    child: _LotteryCard(
                      lottery: e,
                      onEdit: () => onEditDialog(context, e),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _LotteryCard extends StatelessWidget {
  const _LotteryCard({required this.lottery, required this.onEdit});

  final LotteryEntity lottery;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      shape: const OutlineInputBorder(),
      child: ListTile(
        onTap: onEdit,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(lottery.name),
            const Icon(Icons.edit),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.timeOpen),
                Text(lottery.timeOpen),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.timeClose),
                Text(lottery.timeClose),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.quinielaFirstPrize),
                Text(lottery.quinielaFirstPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.quinielaSecondPrize),
                Text(lottery.quinielaSecondPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.quinielaThirdPrize),
                Text(lottery.quinielaThirdPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.paleFirstSecondPrize),
                Text(lottery.paleFirstSecondPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.paleFirstThirdPrize),
                Text(lottery.paleFirstThirdPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.paleSecondThirdPrize),
                Text(lottery.paleSecondThirdPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.tripletaPrice),
                Text(lottery.tripletaPrice.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.active),
                Text(lottery.status.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
