import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/constants.dart';
import '../../core/entities/consortium_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/async_button_builder.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'consortium_controller.dart';

@RoutePage()
class ConsortiumView extends StatefulWidget {
  const ConsortiumView({super.key});

  @override
  State<ConsortiumView> createState() => _ConsortiumViewState();
}

class _ConsortiumViewState extends State<ConsortiumView> {
  final _consortiumController = getIt.get<ConsortiumController>();
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _consortiumController.fetch(),
    );
  }

  Future<void> onUpdate(
    BuildContext context,
    ConsortiumEntity consortium,
  ) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final name = _formKey.currentState?.value["name"] as String;
    final maximumSaleAmount = _formKey.currentState?.value["maximumSaleAmount"] as String;
    final quinielaMaxAmount = _formKey.currentState?.value["quinielaMaxAmount"] as String;
    final paleMaxAmount = _formKey.currentState?.value["paleMaxAmount"] as String;
    final tripletaMaxAmount = _formKey.currentState?.value["tripletaMaxAmount"] as String;

    return _consortiumController.update(
      consortium: consortium.copyWith(
        name: name,
        maximumSaleAmount: num.parse(maximumSaleAmount),
        quinielaMaxAmount: num.parse(quinielaMaxAmount),
        paleMaxAmount: num.parse(paleMaxAmount),
        tripletaMaxAmount: num.parse(tripletaMaxAmount),
      ),
      onFailure: (message) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          showCloseIcon: true,
        ),
      ),
      onSuccess: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(t.consortium.success),
          showCloseIcon: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _consortiumController.watch(
        (_, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.failureMessage != null) {
            return Center(child: Text(state.failureMessage ?? ""));
          }

          if (state.consortium == null) {
            return Center(
              child: Text(t.consortium.empty),
            );
          }

          return FormBuilder(
            key: _formKey,
            initialValue: {
              "name": state.consortium?.name,
              "maximumSaleAmount": state.consortium?.maximumSaleAmount.toStringAsFixed(0),
              "quinielaMaxAmount": state.consortium?.quinielaMaxAmount.toStringAsFixed(0),
              "paleMaxAmount": state.consortium?.paleMaxAmount.toStringAsFixed(0),
              "tripletaMaxAmount": state.consortium?.tripletaMaxAmount.toStringAsFixed(0),
            },
            child: LayoutBuilder(
              builder: (context, constraints) => Center(
                child: SizedBox(
                  width: constraints.maxWidth < 1000 ? constraints.maxWidth : constraints.maxWidth * 0.4,
                  child: ListView(
                    padding: p12,
                    children: [
                      FormBuilderTextField(
                        name: 'name',
                        decoration: InputDecoration(label: Text(t.consortium.name)),
                        validator: FormBuilderValidators.required(),
                      ),
                      vgap(15),
                      FormBuilderTextField(
                        name: 'maximumSaleAmount',
                        decoration: InputDecoration(label: Text(t.consortium.maximumSaleAmount)),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.integer(),
                        ]),
                      ),
                      vgap(15),
                      FormBuilderTextField(
                        name: 'quinielaMaxAmount',
                        decoration: InputDecoration(label: Text(t.consortium.quinielaMaxAmount)),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.integer(),
                        ]),
                      ),
                      vgap(15),
                      FormBuilderTextField(
                        name: 'paleMaxAmount',
                        decoration: InputDecoration(label: Text(t.consortium.paleMaxAmount)),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.integer(),
                        ]),
                      ),
                      vgap(15),
                      FormBuilderTextField(
                        name: 'tripletaMaxAmount',
                        decoration: InputDecoration(label: Text(t.consortium.tripletaMaxAmount)),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.integer(),
                        ]),
                      ),
                      vgap(15),
                      AsyncButtonBuilder(
                        idleStateWidget: Text(t.common.save),
                        state: state.isUpdateLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                        buttonWidget: (stateWidget) => FilledButton(
                          onPressed: () => onUpdate(context, state.consortium!),
                          child: stateWidget,
                        ),
                      ),
                      vgap(15),
                      FilledButton.icon(
                        onPressed: () => authController.signOut(
                          onSuccess: () => router.replaceAll([SignInRoute()]),
                        ),
                        icon: const Icon(Icons.logout),
                        label: Text(t.common.signOut),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
