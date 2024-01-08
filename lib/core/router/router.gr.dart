// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:flutter/material.dart' as _i23;
import 'package:neurolotto_admin/core/entities/group_entity.dart' as _i24;
import 'package:neurolotto_admin/core/entities/group_prize_entity.dart' as _i25;
import 'package:neurolotto_admin/core/entities/lottery_entity.dart' as _i26;
import 'package:neurolotto_admin/core/entities/lottery_result_entity.dart'
    as _i28;
import 'package:neurolotto_admin/core/entities/lottery_schedule_entity.dart'
    as _i27;
import 'package:neurolotto_admin/core/entities/lottery_stand_entity.dart'
    as _i29;
import 'package:neurolotto_admin/core/entities/lottery_stand_prize_entity.dart'
    as _i30;
import 'package:neurolotto_admin/core/entities/ticket_entity.dart' as _i31;
import 'package:neurolotto_admin/features/auth/sign_in_view.dart'
    deferred as _i15;
import 'package:neurolotto_admin/features/consortium/consortium_view.dart'
    deferred as _i1;
import 'package:neurolotto_admin/features/dashboard/dashboard_view.dart'
    deferred as _i2;
import 'package:neurolotto_admin/features/group/group_form_view.dart'
    deferred as _i3;
import 'package:neurolotto_admin/features/group/group_prize_form_view.dart'
    deferred as _i4;
import 'package:neurolotto_admin/features/group/group_view.dart'
    deferred as _i5;
import 'package:neurolotto_admin/features/home/home_view.dart' deferred as _i6;
import 'package:neurolotto_admin/features/lottery/lottery_schedule_date_form_view.dart'
    deferred as _i7;
import 'package:neurolotto_admin/features/lottery/lottery_schedule_form_view.dart'
    deferred as _i8;
import 'package:neurolotto_admin/features/lottery/lottery_schedule_view.dart'
    deferred as _i9;
import 'package:neurolotto_admin/features/lottery/lottery_view.dart'
    deferred as _i10;
import 'package:neurolotto_admin/features/sales/result_form_view.dart'
    deferred as _i11;
import 'package:neurolotto_admin/features/sales/result_view.dart'
    deferred as _i12;
import 'package:neurolotto_admin/features/sales/sale_view.dart'
    deferred as _i13;
import 'package:neurolotto_admin/features/settings/settings_view.dart'
    deferred as _i14;
import 'package:neurolotto_admin/features/splash/splash_view.dart'
    deferred as _i16;
import 'package:neurolotto_admin/features/stand/stand_form_view.dart'
    deferred as _i17;
import 'package:neurolotto_admin/features/stand/stand_password_view.dart'
    deferred as _i18;
import 'package:neurolotto_admin/features/stand/stand_prize_form_view.dart'
    deferred as _i19;
import 'package:neurolotto_admin/features/stand/stand_view.dart'
    deferred as _i20;
import 'package:neurolotto_admin/features/ticket/ticket_view.dart'
    deferred as _i21;

abstract class $AppRouter extends _i22.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    ConsortiumRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.ConsortiumView(),
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.DashboardView(),
        ),
      );
    },
    GroupFormRoute.name: (routeData) {
      final args = routeData.argsAs<GroupFormRouteArgs>(
          orElse: () => const GroupFormRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.GroupFormView(
            key: args.key,
            group: args.group,
          ),
        ),
      );
    },
    GroupPrizeFormRoute.name: (routeData) {
      final args = routeData.argsAs<GroupPrizeFormRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.GroupPrizeFormView(
            key: args.key,
            prize: args.prize,
            group: args.group,
          ),
        ),
      );
    },
    GroupTabsRoute.name: (routeData) {
      final args = routeData.argsAs<GroupTabsRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.GroupTabsView(
            key: args.key,
            group: args.group,
          ),
        ),
      );
    },
    GroupRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.GroupView(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.HomeView(key: args.key),
        ),
      );
    },
    LotteryScheduleDateFormRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryScheduleDateFormRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.LotteryScheduleDateFormView(
            key: args.key,
            lottery: args.lottery,
          ),
        ),
      );
    },
    LotteryScheduleFormRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryScheduleFormRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i8.loadLibrary,
          () => _i8.LotteryScheduleFormView(
            key: args.key,
            lotterySchedule: args.lotterySchedule,
          ),
        ),
      );
    },
    LotteryScheduleRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryScheduleRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.LotteryScheduleView(
            key: args.key,
            lottery: args.lottery,
          ),
        ),
      );
    },
    LotteryTabsRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryTabsRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i10.loadLibrary,
          () => _i10.LotteryTabsView(
            key: args.key,
            lottery: args.lottery,
          ),
        ),
      );
    },
    LotteryRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i10.loadLibrary,
          () => _i10.LotteryView(),
        ),
      );
    },
    ResultFormRoute.name: (routeData) {
      final args = routeData.argsAs<ResultFormRouteArgs>(
          orElse: () => const ResultFormRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i11.loadLibrary,
          () => _i11.ResultFormView(
            key: args.key,
            result: args.result,
          ),
        ),
      );
    },
    ResultRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i12.loadLibrary,
          () => _i12.ResultView(),
        ),
      );
    },
    SaleRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i13.loadLibrary,
          () => _i13.SaleView(),
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i14.loadLibrary,
          () => _i14.SettingsView(),
        ),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i15.loadLibrary,
          () => _i15.SignInView(key: args.key),
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i16.loadLibrary,
          () => _i16.SplashView(),
        ),
      );
    },
    StandFormRoute.name: (routeData) {
      final args = routeData.argsAs<StandFormRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i17.loadLibrary,
          () => _i17.StandFormView(
            key: args.key,
            stand: args.stand,
          ),
        ),
      );
    },
    StandPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<StandPasswordRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i18.loadLibrary,
          () => _i18.StandPasswordView(
            key: args.key,
            stand: args.stand,
          ),
        ),
      );
    },
    StandPrizeFormRoute.name: (routeData) {
      final args = routeData.argsAs<StandPrizeFormRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i19.loadLibrary,
          () => _i19.StandPrizeFormView(
            key: args.key,
            prize: args.prize,
            stand: args.stand,
          ),
        ),
      );
    },
    StandTabsRoute.name: (routeData) {
      final args = routeData.argsAs<StandTabsRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i20.loadLibrary,
          () => _i20.StandTabsView(
            key: args.key,
            stand: args.stand,
          ),
        ),
      );
    },
    StandRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i20.loadLibrary,
          () => _i20.StandView(),
        ),
      );
    },
    TicketDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TicketDetailRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i21.loadLibrary,
          () => _i21.TicketDetail(
            key: args.key,
            ticket: args.ticket,
          ),
        ),
      );
    },
    TicketRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.DeferredWidget(
          _i21.loadLibrary,
          () => _i21.TicketView(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ConsortiumView]
class ConsortiumRoute extends _i22.PageRouteInfo<void> {
  const ConsortiumRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ConsortiumRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConsortiumRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardView]
class DashboardRoute extends _i22.PageRouteInfo<void> {
  const DashboardRoute({List<_i22.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GroupFormView]
class GroupFormRoute extends _i22.PageRouteInfo<GroupFormRouteArgs> {
  GroupFormRoute({
    _i23.Key? key,
    _i24.GroupEntity? group,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          GroupFormRoute.name,
          args: GroupFormRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupFormRoute';

  static const _i22.PageInfo<GroupFormRouteArgs> page =
      _i22.PageInfo<GroupFormRouteArgs>(name);
}

class GroupFormRouteArgs {
  const GroupFormRouteArgs({
    this.key,
    this.group,
  });

  final _i23.Key? key;

  final _i24.GroupEntity? group;

  @override
  String toString() {
    return 'GroupFormRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [_i4.GroupPrizeFormView]
class GroupPrizeFormRoute extends _i22.PageRouteInfo<GroupPrizeFormRouteArgs> {
  GroupPrizeFormRoute({
    _i23.Key? key,
    required _i25.GroupStandPrizeEntity prize,
    required _i24.GroupEntity group,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          GroupPrizeFormRoute.name,
          args: GroupPrizeFormRouteArgs(
            key: key,
            prize: prize,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupPrizeFormRoute';

  static const _i22.PageInfo<GroupPrizeFormRouteArgs> page =
      _i22.PageInfo<GroupPrizeFormRouteArgs>(name);
}

class GroupPrizeFormRouteArgs {
  const GroupPrizeFormRouteArgs({
    this.key,
    required this.prize,
    required this.group,
  });

  final _i23.Key? key;

  final _i25.GroupStandPrizeEntity prize;

  final _i24.GroupEntity group;

  @override
  String toString() {
    return 'GroupPrizeFormRouteArgs{key: $key, prize: $prize, group: $group}';
  }
}

/// generated route for
/// [_i5.GroupTabsView]
class GroupTabsRoute extends _i22.PageRouteInfo<GroupTabsRouteArgs> {
  GroupTabsRoute({
    _i23.Key? key,
    required _i24.GroupEntity group,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          GroupTabsRoute.name,
          args: GroupTabsRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupTabsRoute';

  static const _i22.PageInfo<GroupTabsRouteArgs> page =
      _i22.PageInfo<GroupTabsRouteArgs>(name);
}

class GroupTabsRouteArgs {
  const GroupTabsRouteArgs({
    this.key,
    required this.group,
  });

  final _i23.Key? key;

  final _i24.GroupEntity group;

  @override
  String toString() {
    return 'GroupTabsRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [_i5.GroupView]
class GroupRoute extends _i22.PageRouteInfo<void> {
  const GroupRoute({List<_i22.PageRouteInfo>? children})
      : super(
          GroupRoute.name,
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomeView]
class HomeRoute extends _i22.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i22.PageInfo<HomeRouteArgs> page =
      _i22.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.LotteryScheduleDateFormView]
class LotteryScheduleDateFormRoute
    extends _i22.PageRouteInfo<LotteryScheduleDateFormRouteArgs> {
  LotteryScheduleDateFormRoute({
    _i23.Key? key,
    required _i26.LotteryEntity lottery,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          LotteryScheduleDateFormRoute.name,
          args: LotteryScheduleDateFormRouteArgs(
            key: key,
            lottery: lottery,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryScheduleDateFormRoute';

  static const _i22.PageInfo<LotteryScheduleDateFormRouteArgs> page =
      _i22.PageInfo<LotteryScheduleDateFormRouteArgs>(name);
}

class LotteryScheduleDateFormRouteArgs {
  const LotteryScheduleDateFormRouteArgs({
    this.key,
    required this.lottery,
  });

  final _i23.Key? key;

  final _i26.LotteryEntity lottery;

  @override
  String toString() {
    return 'LotteryScheduleDateFormRouteArgs{key: $key, lottery: $lottery}';
  }
}

/// generated route for
/// [_i8.LotteryScheduleFormView]
class LotteryScheduleFormRoute
    extends _i22.PageRouteInfo<LotteryScheduleFormRouteArgs> {
  LotteryScheduleFormRoute({
    _i23.Key? key,
    required _i27.LotteryScheduleEntity lotterySchedule,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          LotteryScheduleFormRoute.name,
          args: LotteryScheduleFormRouteArgs(
            key: key,
            lotterySchedule: lotterySchedule,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryScheduleFormRoute';

  static const _i22.PageInfo<LotteryScheduleFormRouteArgs> page =
      _i22.PageInfo<LotteryScheduleFormRouteArgs>(name);
}

class LotteryScheduleFormRouteArgs {
  const LotteryScheduleFormRouteArgs({
    this.key,
    required this.lotterySchedule,
  });

  final _i23.Key? key;

  final _i27.LotteryScheduleEntity lotterySchedule;

  @override
  String toString() {
    return 'LotteryScheduleFormRouteArgs{key: $key, lotterySchedule: $lotterySchedule}';
  }
}

/// generated route for
/// [_i9.LotteryScheduleView]
class LotteryScheduleRoute
    extends _i22.PageRouteInfo<LotteryScheduleRouteArgs> {
  LotteryScheduleRoute({
    _i23.Key? key,
    required _i26.LotteryEntity lottery,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          LotteryScheduleRoute.name,
          args: LotteryScheduleRouteArgs(
            key: key,
            lottery: lottery,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryScheduleRoute';

  static const _i22.PageInfo<LotteryScheduleRouteArgs> page =
      _i22.PageInfo<LotteryScheduleRouteArgs>(name);
}

class LotteryScheduleRouteArgs {
  const LotteryScheduleRouteArgs({
    this.key,
    required this.lottery,
  });

  final _i23.Key? key;

  final _i26.LotteryEntity lottery;

  @override
  String toString() {
    return 'LotteryScheduleRouteArgs{key: $key, lottery: $lottery}';
  }
}

/// generated route for
/// [_i10.LotteryTabsView]
class LotteryTabsRoute extends _i22.PageRouteInfo<LotteryTabsRouteArgs> {
  LotteryTabsRoute({
    _i23.Key? key,
    required _i26.LotteryEntity lottery,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          LotteryTabsRoute.name,
          args: LotteryTabsRouteArgs(
            key: key,
            lottery: lottery,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryTabsRoute';

  static const _i22.PageInfo<LotteryTabsRouteArgs> page =
      _i22.PageInfo<LotteryTabsRouteArgs>(name);
}

class LotteryTabsRouteArgs {
  const LotteryTabsRouteArgs({
    this.key,
    required this.lottery,
  });

  final _i23.Key? key;

  final _i26.LotteryEntity lottery;

  @override
  String toString() {
    return 'LotteryTabsRouteArgs{key: $key, lottery: $lottery}';
  }
}

/// generated route for
/// [_i10.LotteryView]
class LotteryRoute extends _i22.PageRouteInfo<void> {
  const LotteryRoute({List<_i22.PageRouteInfo>? children})
      : super(
          LotteryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LotteryRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ResultFormView]
class ResultFormRoute extends _i22.PageRouteInfo<ResultFormRouteArgs> {
  ResultFormRoute({
    _i23.Key? key,
    _i28.LotteryResultEntity? result,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          ResultFormRoute.name,
          args: ResultFormRouteArgs(
            key: key,
            result: result,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultFormRoute';

  static const _i22.PageInfo<ResultFormRouteArgs> page =
      _i22.PageInfo<ResultFormRouteArgs>(name);
}

class ResultFormRouteArgs {
  const ResultFormRouteArgs({
    this.key,
    this.result,
  });

  final _i23.Key? key;

  final _i28.LotteryResultEntity? result;

  @override
  String toString() {
    return 'ResultFormRouteArgs{key: $key, result: $result}';
  }
}

/// generated route for
/// [_i12.ResultView]
class ResultRoute extends _i22.PageRouteInfo<void> {
  const ResultRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SaleView]
class SaleRoute extends _i22.PageRouteInfo<void> {
  const SaleRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SaleRoute.name,
          initialChildren: children,
        );

  static const String name = 'SaleRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SettingsView]
class SettingsRoute extends _i22.PageRouteInfo<void> {
  const SettingsRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SignInView]
class SignInRoute extends _i22.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i23.Key? key,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i22.PageInfo<SignInRouteArgs> page =
      _i22.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.SplashView]
class SplashRoute extends _i22.PageRouteInfo<void> {
  const SplashRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i17.StandFormView]
class StandFormRoute extends _i22.PageRouteInfo<StandFormRouteArgs> {
  StandFormRoute({
    _i23.Key? key,
    required _i29.LotteryStandEntity stand,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          StandFormRoute.name,
          args: StandFormRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandFormRoute';

  static const _i22.PageInfo<StandFormRouteArgs> page =
      _i22.PageInfo<StandFormRouteArgs>(name);
}

class StandFormRouteArgs {
  const StandFormRouteArgs({
    this.key,
    required this.stand,
  });

  final _i23.Key? key;

  final _i29.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandFormRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i18.StandPasswordView]
class StandPasswordRoute extends _i22.PageRouteInfo<StandPasswordRouteArgs> {
  StandPasswordRoute({
    _i23.Key? key,
    required _i29.LotteryStandEntity stand,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          StandPasswordRoute.name,
          args: StandPasswordRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandPasswordRoute';

  static const _i22.PageInfo<StandPasswordRouteArgs> page =
      _i22.PageInfo<StandPasswordRouteArgs>(name);
}

class StandPasswordRouteArgs {
  const StandPasswordRouteArgs({
    this.key,
    required this.stand,
  });

  final _i23.Key? key;

  final _i29.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandPasswordRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i19.StandPrizeFormView]
class StandPrizeFormRoute extends _i22.PageRouteInfo<StandPrizeFormRouteArgs> {
  StandPrizeFormRoute({
    _i23.Key? key,
    required _i30.LotteryStandPrizeEntity prize,
    required _i29.LotteryStandEntity stand,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          StandPrizeFormRoute.name,
          args: StandPrizeFormRouteArgs(
            key: key,
            prize: prize,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandPrizeFormRoute';

  static const _i22.PageInfo<StandPrizeFormRouteArgs> page =
      _i22.PageInfo<StandPrizeFormRouteArgs>(name);
}

class StandPrizeFormRouteArgs {
  const StandPrizeFormRouteArgs({
    this.key,
    required this.prize,
    required this.stand,
  });

  final _i23.Key? key;

  final _i30.LotteryStandPrizeEntity prize;

  final _i29.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandPrizeFormRouteArgs{key: $key, prize: $prize, stand: $stand}';
  }
}

/// generated route for
/// [_i20.StandTabsView]
class StandTabsRoute extends _i22.PageRouteInfo<StandTabsRouteArgs> {
  StandTabsRoute({
    _i23.Key? key,
    required _i29.LotteryStandEntity stand,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          StandTabsRoute.name,
          args: StandTabsRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandTabsRoute';

  static const _i22.PageInfo<StandTabsRouteArgs> page =
      _i22.PageInfo<StandTabsRouteArgs>(name);
}

class StandTabsRouteArgs {
  const StandTabsRouteArgs({
    this.key,
    required this.stand,
  });

  final _i23.Key? key;

  final _i29.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandTabsRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i20.StandView]
class StandRoute extends _i22.PageRouteInfo<void> {
  const StandRoute({List<_i22.PageRouteInfo>? children})
      : super(
          StandRoute.name,
          initialChildren: children,
        );

  static const String name = 'StandRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i21.TicketDetail]
class TicketDetailRoute extends _i22.PageRouteInfo<TicketDetailRouteArgs> {
  TicketDetailRoute({
    _i23.Key? key,
    required _i31.TicketEntity ticket,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          TicketDetailRoute.name,
          args: TicketDetailRouteArgs(
            key: key,
            ticket: ticket,
          ),
          initialChildren: children,
        );

  static const String name = 'TicketDetailRoute';

  static const _i22.PageInfo<TicketDetailRouteArgs> page =
      _i22.PageInfo<TicketDetailRouteArgs>(name);
}

class TicketDetailRouteArgs {
  const TicketDetailRouteArgs({
    this.key,
    required this.ticket,
  });

  final _i23.Key? key;

  final _i31.TicketEntity ticket;

  @override
  String toString() {
    return 'TicketDetailRouteArgs{key: $key, ticket: $ticket}';
  }
}

/// generated route for
/// [_i21.TicketView]
class TicketRoute extends _i22.PageRouteInfo<void> {
  const TicketRoute({List<_i22.PageRouteInfo>? children})
      : super(
          TicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'TicketRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}
