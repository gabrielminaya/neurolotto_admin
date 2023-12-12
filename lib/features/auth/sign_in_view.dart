import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../core/constants.dart';
import '../../../core/extensions/context.dart';
import '../../../core/extensions/value_notifier.dart';
import '../../../core/service_locator/get_it.dart';
import '../../../core/services.dart';
import '../../../i18n/strings.g.dart';
import '../../core/router/router.gr.dart';
import '../../core/async_button_builder.dart';
import 'auth_controller.dart';

@RoutePage()
class SignInView extends StatelessWidget {
  SignInView({super.key});

  final _formKey = GlobalKey<FormBuilderState>();
  final _authController = getIt.get<AuthController>();
  final _hidePassword = ValueNotifier(true);

  Future<void> onSignIn(BuildContext context) async {
    if (!(_formKey.currentState?.saveAndValidate() ?? false)) return;

    final username = _formKey.currentState?.value["username"] ?? "";
    final password = _formKey.currentState?.value["password"] ?? "";

    return _authController.signIn(
      username: username,
      password: password,
      onFailue: (message) => context.showSnackBar(
        SnackBar(content: Text(message), showCloseIcon: true),
      ),
      onSuccess: () => router.replaceAll([const SplashRoute()]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final body = FormBuilder(
      key: _formKey,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            foregroundColor: MaterialStateColor.resolveWith(
              (_) => context.colorScheme.onBackground,
            ),
            backgroundColor: MaterialStateColor.resolveWith(
              (_) => context.colorScheme.background,
            ),
          ),
          SliverPadding(
            padding: p12,
            sliver: SliverList.list(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(t.signIn.messageTitle, style: context.textTheme.headlineMedium),
                  subtitle: Text(t.signIn.messageContent),
                ),
                vgap(10),
                FormBuilderTextField(
                  name: 'username',
                  decoration: InputDecoration(
                    labelText: t.signIn.username,
                    prefixIcon: const Icon(Icons.account_circle_outlined),
                    border: const OutlineInputBorder(),
                  ),
                  validator: FormBuilderValidators.required(),
                ),
                vgap(10),
                _hidePassword.watch(
                  (context, state) => FormBuilderTextField(
                    name: 'password',
                    decoration: InputDecoration(
                      labelText: t.signIn.password,
                      prefixIcon: const Icon(Icons.password_outlined),
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () => _hidePassword.value = !state,
                        icon: state ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                      ),
                    ),
                    obscureText: state,
                    validator: FormBuilderValidators.required(),
                  ),
                ),
                vgap(10),
                _authController.watch((context, state) {
                  return AsyncButtonBuilder(
                    idleStateWidget: Text(t.signIn.signIn),
                    state: state.isLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
                    buttonWidget: (stateWidget) => FilledButton(
                      onPressed: () => onSignIn(context),
                      child: stateWidget,
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 700) {
          return body;
        }

        return Center(
          child: SizedBox(
            width: 700,
            child: body,
          ),
        );
      },
    ));
  }
}
