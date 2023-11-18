import 'package:auto_route/auto_route.dart';

import '../services.dart';
import 'router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authController.isAuthenticated) {
      resolver.next(true);
    } else {
      router.replaceAll([SignInRoute()]);
    }
  }
}

class ConsortiumGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authController.consortium != null) {
      resolver.next(true);
    } else {
      router.replaceAll([const SplashRoute()]);
    }
  }
}
