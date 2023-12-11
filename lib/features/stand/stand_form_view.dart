import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/constants.dart';
import '../../core/entities/constraint_level_entity.dart';
import '../../core/entities/group_entity.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/themes/async_button_builder.dart';
import '../../i18n/strings.g.dart';
import 'stand_controller.dart';

@RoutePage()
class StandFormView extends StatefulWidget {
  const StandFormView({super.key, required this.stand});

  final LotteryStandEntity stand;

  @override
  State<StandFormView> createState() => _StandFormViewState();
}

class _StandFormViewState extends State<StandFormView> {
  final _standController = getIt.get<StandController>();
  final _formKey = GlobalKey<FormBuilderState>();
  final _showPlayAmounts = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _standController.fetchFormDependecies(),
    );
  }

  Future<void> onSubmit(BuildContext context) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final name = _formKey.currentState?.value["name"] as String;
    final group = _formKey.currentState?.value["group"] as GroupEntity;
    final contraint = _formKey.currentState?.value["contraint"] as ConstraintLevelEntity;
    final active = _formKey.currentState?.value["active"] as bool;
    final maximumCancellationAmount = _formKey.currentState?.value["maximumCancellationAmount"] as String;
    final maximumSaleAmount = _formKey.currentState?.value["maximumSaleAmount"] as String;
    final quinielaMaxAmount = _formKey.currentState?.value["quinielaMaxAmount"] as String?;
    final paleMaxAmount = _formKey.currentState?.value["paleMaxAmount"] as String?;
    final tripletaMaxAmount = _formKey.currentState?.value["tripletaMaxAmount"] as String?;

    return _standController.update(
      stand: widget.stand.copyWith(
        name: name,
        group: group,
        constraintLevel: contraint,
        active: active,
        maximumCancellationAmount: num.parse(maximumCancellationAmount),
        maximumSaleAmount: num.parse(maximumSaleAmount),
        quinielaMaxAmount: quinielaMaxAmount != null ? num.parse(quinielaMaxAmount) : null,
        paleMaxAmount: paleMaxAmount != null ? num.parse(paleMaxAmount) : null,
        tripletaMaxAmount: tripletaMaxAmount != null ? num.parse(tripletaMaxAmount) : null,
      ),
      onFailure: (message) {
        context.router.pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            showCloseIcon: true,
          ),
        );
      },
      onSuccess: () {
        context.router.pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.stand.name)),
      body: FormBuilder(
        key: _formKey,
        initialValue: {
          "name": widget.stand.name,
          "group": widget.stand.group,
          "contraint": widget.stand.constraintLevel,
          "active": widget.stand.active,
          "maximumSaleAmount": widget.stand.maximumSaleAmount.toStringAsFixed(0),
          "maximumCancellationAmount": widget.stand.maximumCancellationAmount.toStringAsFixed(0),
          "quinielaMaxAmount": widget.stand.quinielaMaxAmount?.toStringAsFixed(0),
          "paleMaxAmount": widget.stand.paleMaxAmount?.toStringAsFixed(0),
          "tripletaMaxAmount": widget.stand.tripletaMaxAmount?.toStringAsFixed(0),
        },
        child: _standController.watch(
          (context, state) {
            if (state.isFormLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.failureMessage != null) {
              return Center(child: Text(state.failureMessage ?? ""));
            }

            return ListView(
              padding: p16,
              children: [
                FormBuilderTextField(
                  name: 'name',
                  decoration: InputDecoration(label: Text(t.stand.name)),
                  validator: FormBuilderValidators.required(),
                ),
                vgap(10),
                FormBuilderDropdown<GroupEntity>(
                  name: 'group',
                  items: state.groups.map((e) => DropdownMenuItem(value: e, child: Text(e.name))).toList(),
                  decoration: InputDecoration(label: Text(t.stand.group)),
                  validator: FormBuilderValidators.required(),
                ),
                vgap(10),
                FormBuilderDropdown<ConstraintLevelEntity>(
                  name: 'contraint',
                  items: state.constraints.map((e) => DropdownMenuItem(value: e, child: Text(e.name))).toList(),
                  onChanged: (value) => _showPlayAmounts.value = value?.id == "12425f6b-f51d-44eb-9e42-985f47e82f49",
                  decoration: InputDecoration(label: Text(t.stand.contraint)),
                  validator: FormBuilderValidators.required(),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'maximumCancellationAmount',
                  decoration: InputDecoration(label: Text(t.stand.maximumCancellationAmount)),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.integer(),
                  ]),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'maximumSaleAmount',
                  decoration: InputDecoration(label: Text(t.stand.maximumSaleAmount)),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.integer(),
                  ]),
                ),
                _showPlayAmounts.watch(
                  (context, visible) => Visibility(
                    visible: visible,
                    child: Column(
                      children: [
                        const Divider(),
                        FormBuilderTextField(
                          name: 'quinielaMaxAmount',
                          decoration: InputDecoration(label: Text(t.stand.quinielaMaxAmount)),
                          validator: FormBuilderValidators.compose([
                            if (visible) FormBuilderValidators.required(),
                            FormBuilderValidators.integer(),
                          ]),
                        ),
                        vgap(10),
                        FormBuilderTextField(
                          name: 'paleMaxAmount',
                          decoration: InputDecoration(label: Text(t.stand.paleMaxAmount)),
                          validator: FormBuilderValidators.compose([
                            if (visible) FormBuilderValidators.required(),
                            FormBuilderValidators.integer(),
                          ]),
                        ),
                        vgap(10),
                        FormBuilderTextField(
                          name: 'tripletaMaxAmount',
                          decoration: InputDecoration(label: Text(t.stand.tripletaMaxAmount)),
                          validator: FormBuilderValidators.compose([
                            if (visible) FormBuilderValidators.required(),
                            FormBuilderValidators.integer(),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                vgap(10),
                FormBuilderSwitch(
                  name: 'active',
                  title: Text(t.stand.active),
                  validator: FormBuilderValidators.required(),
                ),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: _standController.watch(
                (context, state) => AsyncButtonBuilder(
                  idleStateWidget: Text(t.common.save),
                  state: state.isUpdateLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                  buttonWidget: (stateWidget) => FilledButton(onPressed: () => onSubmit(context), child: stateWidget),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
