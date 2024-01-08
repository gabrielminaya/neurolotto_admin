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
          AutoRoute(page: SettingsRoute.page, children: [
            AutoRoute(page: TicketRoute.page),
            AutoRoute(page: GroupRoute.page),
            AutoRoute(page: StandRoute.page),
            AutoRoute(page: LotteryRoute.page, children: [
              AutoRoute(page: LotteryScheduleRoute.page),
            ]),
            AutoRoute(page: ConsortiumRoute.page),
          ]),
        ],
      ),
      AutoRoute(page: StandTabsRoute.page),
      AutoRoute(page: StandFormRoute.page, fullscreenDialog: true),
      AutoRoute(page: StandPrizeFormRoute.page, fullscreenDialog: true),
      AutoRoute(page: GroupTabsRoute.page),
      AutoRoute(page: GroupFormRoute.page, fullscreenDialog: true),
      AutoRoute(page: GroupPrizeFormRoute.page, fullscreenDialog: true),
      AutoRoute(page: TicketDetailRoute.page),
      AutoRoute(page: ResultFormRoute.page, fullscreenDialog: true),
      AutoRoute(page: LotteryScheduleFormRoute.page, fullscreenDialog: true),
      AutoRoute(page: LotteryScheduleDateFormRoute.page, fullscreenDialog: true),
      AutoRoute(page: LotteryTabsRoute.page),
      AutoRoute(page: SplashRoute.page, initial: true, guards: [AuthGuard()]),
      AutoRoute(page: SignInRoute.page),
    ];
  }
}
