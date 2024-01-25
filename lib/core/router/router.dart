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
          AutoRoute(page: SaleRoute.page, children: [
            AutoRoute(page: SaleSummaryRoute.page),
            AutoRoute(page: SaleDetailRoute.page),
          ]),
          AutoRoute(page: ResultRoute.page, children: [
            AutoRoute(page: ResultLotteriesRoute.page),
            AutoRoute(page: ResultPlaysRoute.page),
          ]),
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
      AutoRoute(page: StandTabsRoute.page, guards: [AuthGuard()]),
      AutoRoute(page: StandFormRoute.page, fullscreenDialog: true, guards: [AuthGuard()]),
      AutoRoute(page: StandPrizeFormRoute.page, fullscreenDialog: true, guards: [AuthGuard()]),
      AutoRoute(page: GroupTabsRoute.page, guards: [AuthGuard()]),
      AutoRoute(page: GroupFormRoute.page, fullscreenDialog: true, guards: [AuthGuard()]),
      AutoRoute(page: GroupPrizeFormRoute.page, fullscreenDialog: true, guards: [AuthGuard()]),
      AutoRoute(page: GroupPlayConstraintFormRoute.page, fullscreenDialog: true, guards: [AuthGuard()]),
      AutoRoute(page: TicketDetailRoute.page, guards: [AuthGuard()]),
      AutoRoute(page: ResultLotteriesFormRoute.page, fullscreenDialog: true, guards: [AuthGuard()]),
      AutoRoute(page: LotteryScheduleFormRoute.page, fullscreenDialog: true, guards: [AuthGuard()]),
      AutoRoute(page: LotteryScheduleDateFormRoute.page, fullscreenDialog: true, guards: [AuthGuard()]),
      AutoRoute(page: LotteryTabsRoute.page, maintainState: false, guards: [AuthGuard()]),
      AutoRoute(page: SplashRoute.page, initial: true, guards: [AuthGuard()]),
      AutoRoute(page: SignInRoute.page),
    ];
  }
}
