import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../core/constants.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/strings.g.dart';
import 'splash_controller.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final _controller = getIt.get<SplashController>();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _controller.initialize(
        onFoundConsortium: () {
          router.replaceAll([const DashboardRoute()]);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _controller.watch(
        (context, state) => state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          failure: (message) => Center(child: Text(message)),
          success: (consortium) {
            if (consortium == null) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(t.splash.notConsortiumErrorMessage),
                    vgap(10),
                    FilledButton.icon(
                      onPressed: () => authController.signOut(
                        onSuccess: () => router.replaceAll([SignInRoute()]),
                      ),
                      label: Text(t.common.signOut),
                      icon: const Icon(Icons.logout_outlined),
                    )
                  ],
                ),
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
