import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/async_button_builder.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'stand_password_controller.dart';

@RoutePage()
class StandPasswordView extends StatelessWidget {
  StandPasswordView({super.key, required this.stand});
  final LotteryStandEntity stand;
  final _formKey = GlobalKey<FormBuilderState>();
  final _controller = getIt.get<StandPasswordController>();

  Future<void> onSubmit(BuildContext context) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final password = _formKey.currentState?.value["password"] as String;
    final confirmPassword = _formKey.currentState?.value["confirmPassword"] as String;

    return _controller.changePassword(
      stand: stand,
      password: password,
      confirmPassword: confirmPassword,
      onFailure: (message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message), showCloseIcon: true),
        );
      },
      onSuccess: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Success"), showCloseIcon: true),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Center(
        child: SizedBox(
          width: constraints.maxWidth < 700 ? constraints.maxWidth : constraints.maxWidth * 0.4,
          child: FormBuilder(
            key: _formKey,
            child: ListView(
              padding: p12,
              children: [
                FormBuilderTextField(
                  name: "password",
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(6),
                  ]),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: "confirmPassword",
                  decoration: const InputDecoration(
                    labelText: "Confirm password",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(6),
                  ]),
                ),
                vgap(10),
                ButtonBar(
                  children: [
                    OutlinedButton(
                      onPressed: () => router.back(),
                      child: Text(t.common.back),
                    ),
                    _controller.watch(
                      (context, state) => AsyncButtonBuilder(
                        idleStateWidget: Text(t.common.save),
                        state: state ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                        buttonWidget: (stateWidget) =>
                            FilledButton(onPressed: () => onSubmit(context), child: stateWidget),
                      ),
                    )
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
