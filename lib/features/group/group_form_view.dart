import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/constants.dart';
import '../../core/entities/group_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../core/themes/async_button_builder.dart';
import '../../i18n/strings.g.dart';
import 'group_controller.dart';

@RoutePage()
class GroupFormView extends StatelessWidget {
  GroupFormView({super.key, this.group});

  final GroupEntity? group;

  final _groupController = getIt.get<GroupController>();
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> onSubmit(BuildContext context) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final name = _formKey.currentState?.value["name"] as String;
    final quinielaMaxAmount = _formKey.currentState?.value["quinielaMaxAmount"] as String;
    final paleMaxAmount = _formKey.currentState?.value["paleMaxAmount"] as String;
    final tripletaMaxAmount = _formKey.currentState?.value["tripletaMaxAmount"] as String;

    if (group == null) {
      return _groupController.add(
        group: GroupEntity(
          id: "",
          name: name,
          quinielaMaxAmount: num.parse(quinielaMaxAmount),
          paleMaxAmount: num.parse(paleMaxAmount),
          tripletaMaxAmount: num.parse(tripletaMaxAmount),
        ),
        onFailure: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              showCloseIcon: true,
            ),
          );
        },
        onSuccess: () => router.back(),
      );
    }

    return _groupController.update(
      group: group!.copyWith(
        name: name,
        quinielaMaxAmount: num.parse(quinielaMaxAmount),
        paleMaxAmount: num.parse(paleMaxAmount),
        tripletaMaxAmount: num.parse(tripletaMaxAmount),
      ),
      onFailure: (message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            showCloseIcon: true,
          ),
        );
      },
      onSuccess: () => router.back(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        initialValue: {
          "name": group?.name,
          "quinielaMaxAmount": group?.quinielaMaxAmount.toStringAsFixed(0),
          "paleMaxAmount": group?.paleMaxAmount.toStringAsFixed(0),
          "tripletaMaxAmount": group?.tripletaMaxAmount.toStringAsFixed(0),
        },
        child: LayoutBuilder(
          builder: (context, constraints) => SizedBox(
            width: constraints.maxWidth < 700 ? constraints.maxWidth : constraints.maxWidth * 0.5,
            child: ListView(
              padding: p12,
              children: [
                FormBuilderTextField(
                  name: 'name',
                  decoration: InputDecoration(label: Text(t.group.name)),
                  validator: FormBuilderValidators.required(),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'quinielaMaxAmount',
                  decoration: InputDecoration(label: Text(t.group.quinielaMaxAmount)),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.integer(),
                  ]),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'paleMaxAmount',
                  decoration: InputDecoration(label: Text(t.group.paleMaxAmount)),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.integer(),
                  ]),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'tripletaMaxAmount',
                  decoration: InputDecoration(label: Text(t.group.tripletaMaxAmount)),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.integer(),
                  ]),
                ),
                ButtonBar(
                  children: [
                    OutlinedButton(
                      onPressed: () => router.back(),
                      child: Text(t.common.back),
                    ),
                    _groupController.watch(
                      (context, state) => AsyncButtonBuilder(
                        idleStateWidget: Text(t.common.save),
                        state: state.isActionLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                        buttonWidget: (stateWidget) =>
                            FilledButton(onPressed: () => onSubmit(context), child: stateWidget),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
