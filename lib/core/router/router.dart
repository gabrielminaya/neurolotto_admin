import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';
import 'router_guards.dart';

@Singleton()
@AutoRouterConfig(
  replaceInRouteName: "View|Tab,Route",
  deferredLoading: true,
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: HomeRoute.page,
        guards: [AuthGuard(), ConsortiumGuard()],
        children: [
          AutoRoute(page: DashboardRoute.page),
          AutoRoute(page: SaleRoute.page),
          AutoRoute(page: ResultRoute.page),
          AutoRoute(page: TicketRoute.page),
          AutoRoute(page: SettingsRoute.page, children: [
            AutoRoute(page: GroupRoute.page),
            AutoRoute(page: StandRoute.page),
            AutoRoute(page: LotteryRoute.page),
            AutoRoute(page: ConsortiumRoute.page),
          ]),
        ],
      ),
      AutoRoute(page: StandDetailRoute.page),
      AutoRoute(page: StandFormRoute.page, fullscreenDialog: true),
      AutoRoute(page: GroupDetailRoute.page),
      AutoRoute(page: GroupFormRoute.page, fullscreenDialog: true),
      AutoRoute(page: SplashRoute.page, initial: true, guards: [AuthGuard()]),
      AutoRoute(page: SignInRoute.page),
    ];
  }
}
