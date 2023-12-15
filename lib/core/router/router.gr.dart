// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;
import 'package:neurolotto_admin/core/entities/group_entity.dart' as _i22;
import 'package:neurolotto_admin/core/entities/lottery_entity.dart' as _i23;
import 'package:neurolotto_admin/core/entities/lottery_result_entity.dart'
    as _i25;
import 'package:neurolotto_admin/core/entities/lottery_schedule_entity.dart'
    as _i24;
import 'package:neurolotto_admin/core/entities/lottery_stand_entity.dart'
    as _i26;
import 'package:neurolotto_admin/core/entities/ticket_entity.dart' as _i27;
import 'package:neurolotto_admin/features/auth/sign_in_view.dart'
    deferred as _i14;
import 'package:neurolotto_admin/features/consortium/consortium_view.dart'
    deferred as _i1;
import 'package:neurolotto_admin/features/dashboard/dashboard_view.dart'
    deferred as _i2;
import 'package:neurolotto_admin/features/group/group_form_view.dart'
    deferred as _i4;
import 'package:neurolotto_admin/features/group/group_view.dart'
    deferred as _i3;
import 'package:neurolotto_admin/features/home/home_view.dart' deferred as _i5;
import 'package:neurolotto_admin/features/lottery/lottery_schedule_date_form_view.dart'
    deferred as _i6;
import 'package:neurolotto_admin/features/lottery/lottery_schedule_form_view.dart'
    deferred as _i7;
import 'package:neurolotto_admin/features/lottery/lottery_schedule_view.dart'
    deferred as _i8;
import 'package:neurolotto_admin/features/lottery/lottery_view.dart'
    deferred as _i9;
import 'package:neurolotto_admin/features/sales/result_form_view.dart'
    deferred as _i10;
import 'package:neurolotto_admin/features/sales/result_view.dart'
    deferred as _i11;
import 'package:neurolotto_admin/features/sales/sale_view.dart'
    deferred as _i12;
import 'package:neurolotto_admin/features/settings/settings_view.dart'
    deferred as _i13;
import 'package:neurolotto_admin/features/splash/splash_view.dart'
    deferred as _i15;
import 'package:neurolotto_admin/features/stand/stand_form_view.dart'
    deferred as _i17;
import 'package:neurolotto_admin/features/stand/stand_password_view.dart'
    deferred as _i18;
import 'package:neurolotto_admin/features/stand/stand_view.dart'
    deferred as _i16;
import 'package:neurolotto_admin/features/ticket/ticket_view.dart'
    deferred as _i19;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    ConsortiumRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.ConsortiumView(),
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.DashboardView(),
        ),
      );
    },
    GroupDetailRoute.name: (routeData) {
      final args = routeData.argsAs<GroupDetailRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.GroupDetail(
            key: args.key,
            group: args.group,
          ),
        ),
      );
    },
    GroupFormRoute.name: (routeData) {
      final args = routeData.argsAs<GroupFormRouteArgs>(
          orElse: () => const GroupFormRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.GroupFormView(
            key: args.key,
            group: args.group,
          ),
        ),
      );
    },
    GroupRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.GroupView(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.HomeView(key: args.key),
        ),
      );
    },
    LotteryScheduleDateFormRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryScheduleDateFormRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.LotteryScheduleDateFormView(
            key: args.key,
            lottery: args.lottery,
          ),
        ),
      );
    },
    LotteryScheduleFormRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryScheduleFormRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.LotteryScheduleFormView(
            key: args.key,
            lotterySchedule: args.lotterySchedule,
          ),
        ),
      );
    },
    LotteryScheduleRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryScheduleRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i8.loadLibrary,
          () => _i8.LotteryScheduleView(
            key: args.key,
            lottery: args.lottery,
          ),
        ),
      );
    },
    LotteryTabsRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryTabsRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.LotteryTabsView(
            key: args.key,
            lottery: args.lottery,
          ),
        ),
      );
    },
    LotteryRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.LotteryView(),
        ),
      );
    },
    ResultFormRoute.name: (routeData) {
      final args = routeData.argsAs<ResultFormRouteArgs>(
          orElse: () => const ResultFormRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i10.loadLibrary,
          () => _i10.ResultFormView(
            key: args.key,
            result: args.result,
          ),
        ),
      );
    },
    ResultRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i11.loadLibrary,
          () => _i11.ResultView(),
        ),
      );
    },
    SaleRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i12.loadLibrary,
          () => _i12.SaleView(),
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i13.loadLibrary,
          () => _i13.SettingsView(),
        ),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i14.loadLibrary,
          () => _i14.SignInView(key: args.key),
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i15.loadLibrary,
          () => _i15.SplashView(),
        ),
      );
    },
    StandDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StandDetailRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i16.loadLibrary,
          () => _i16.StandDetail(
            key: args.key,
            stand: args.stand,
          ),
        ),
      );
    },
    StandFormRoute.name: (routeData) {
      final args = routeData.argsAs<StandFormRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
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
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i18.loadLibrary,
          () => _i18.StandPasswordView(
            key: args.key,
            stand: args.stand,
          ),
        ),
      );
    },
    StandRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i16.loadLibrary,
          () => _i16.StandView(),
        ),
      );
    },
    TicketDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TicketDetailRouteArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i19.loadLibrary,
          () => _i19.TicketDetail(
            key: args.key,
            ticket: args.ticket,
          ),
        ),
      );
    },
    TicketRoute.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.DeferredWidget(
          _i19.loadLibrary,
          () => _i19.TicketView(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ConsortiumView]
class ConsortiumRoute extends _i20.PageRouteInfo<void> {
  const ConsortiumRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ConsortiumRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConsortiumRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardView]
class DashboardRoute extends _i20.PageRouteInfo<void> {
  const DashboardRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GroupDetail]
class GroupDetailRoute extends _i20.PageRouteInfo<GroupDetailRouteArgs> {
  GroupDetailRoute({
    _i21.Key? key,
    required _i22.GroupEntity group,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          GroupDetailRoute.name,
          args: GroupDetailRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupDetailRoute';

  static const _i20.PageInfo<GroupDetailRouteArgs> page =
      _i20.PageInfo<GroupDetailRouteArgs>(name);
}

class GroupDetailRouteArgs {
  const GroupDetailRouteArgs({
    this.key,
    required this.group,
  });

  final _i21.Key? key;

  final _i22.GroupEntity group;

  @override
  String toString() {
    return 'GroupDetailRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [_i4.GroupFormView]
class GroupFormRoute extends _i20.PageRouteInfo<GroupFormRouteArgs> {
  GroupFormRoute({
    _i21.Key? key,
    _i22.GroupEntity? group,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          GroupFormRoute.name,
          args: GroupFormRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupFormRoute';

  static const _i20.PageInfo<GroupFormRouteArgs> page =
      _i20.PageInfo<GroupFormRouteArgs>(name);
}

class GroupFormRouteArgs {
  const GroupFormRouteArgs({
    this.key,
    this.group,
  });

  final _i21.Key? key;

  final _i22.GroupEntity? group;

  @override
  String toString() {
    return 'GroupFormRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [_i3.GroupView]
class GroupRoute extends _i20.PageRouteInfo<void> {
  const GroupRoute({List<_i20.PageRouteInfo>? children})
      : super(
          GroupRoute.name,
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeView]
class HomeRoute extends _i20.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i20.PageInfo<HomeRouteArgs> page =
      _i20.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.LotteryScheduleDateFormView]
class LotteryScheduleDateFormRoute
    extends _i20.PageRouteInfo<LotteryScheduleDateFormRouteArgs> {
  LotteryScheduleDateFormRoute({
    _i21.Key? key,
    required _i23.LotteryEntity lottery,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          LotteryScheduleDateFormRoute.name,
          args: LotteryScheduleDateFormRouteArgs(
            key: key,
            lottery: lottery,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryScheduleDateFormRoute';

  static const _i20.PageInfo<LotteryScheduleDateFormRouteArgs> page =
      _i20.PageInfo<LotteryScheduleDateFormRouteArgs>(name);
}

class LotteryScheduleDateFormRouteArgs {
  const LotteryScheduleDateFormRouteArgs({
    this.key,
    required this.lottery,
  });

  final _i21.Key? key;

  final _i23.LotteryEntity lottery;

  @override
  String toString() {
    return 'LotteryScheduleDateFormRouteArgs{key: $key, lottery: $lottery}';
  }
}

/// generated route for
/// [_i7.LotteryScheduleFormView]
class LotteryScheduleFormRoute
    extends _i20.PageRouteInfo<LotteryScheduleFormRouteArgs> {
  LotteryScheduleFormRoute({
    _i21.Key? key,
    required _i24.LotteryScheduleEntity lotterySchedule,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          LotteryScheduleFormRoute.name,
          args: LotteryScheduleFormRouteArgs(
            key: key,
            lotterySchedule: lotterySchedule,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryScheduleFormRoute';

  static const _i20.PageInfo<LotteryScheduleFormRouteArgs> page =
      _i20.PageInfo<LotteryScheduleFormRouteArgs>(name);
}

class LotteryScheduleFormRouteArgs {
  const LotteryScheduleFormRouteArgs({
    this.key,
    required this.lotterySchedule,
  });

  final _i21.Key? key;

  final _i24.LotteryScheduleEntity lotterySchedule;

  @override
  String toString() {
    return 'LotteryScheduleFormRouteArgs{key: $key, lotterySchedule: $lotterySchedule}';
  }
}

/// generated route for
/// [_i8.LotteryScheduleView]
class LotteryScheduleRoute
    extends _i20.PageRouteInfo<LotteryScheduleRouteArgs> {
  LotteryScheduleRoute({
    _i21.Key? key,
    required _i23.LotteryEntity lottery,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          LotteryScheduleRoute.name,
          args: LotteryScheduleRouteArgs(
            key: key,
            lottery: lottery,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryScheduleRoute';

  static const _i20.PageInfo<LotteryScheduleRouteArgs> page =
      _i20.PageInfo<LotteryScheduleRouteArgs>(name);
}

class LotteryScheduleRouteArgs {
  const LotteryScheduleRouteArgs({
    this.key,
    required this.lottery,
  });

  final _i21.Key? key;

  final _i23.LotteryEntity lottery;

  @override
  String toString() {
    return 'LotteryScheduleRouteArgs{key: $key, lottery: $lottery}';
  }
}

/// generated route for
/// [_i9.LotteryTabsView]
class LotteryTabsRoute extends _i20.PageRouteInfo<LotteryTabsRouteArgs> {
  LotteryTabsRoute({
    _i21.Key? key,
    required _i23.LotteryEntity lottery,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          LotteryTabsRoute.name,
          args: LotteryTabsRouteArgs(
            key: key,
            lottery: lottery,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryTabsRoute';

  static const _i20.PageInfo<LotteryTabsRouteArgs> page =
      _i20.PageInfo<LotteryTabsRouteArgs>(name);
}

class LotteryTabsRouteArgs {
  const LotteryTabsRouteArgs({
    this.key,
    required this.lottery,
  });

  final _i21.Key? key;

  final _i23.LotteryEntity lottery;

  @override
  String toString() {
    return 'LotteryTabsRouteArgs{key: $key, lottery: $lottery}';
  }
}

/// generated route for
/// [_i9.LotteryView]
class LotteryRoute extends _i20.PageRouteInfo<void> {
  const LotteryRoute({List<_i20.PageRouteInfo>? children})
      : super(
          LotteryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LotteryRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ResultFormView]
class ResultFormRoute extends _i20.PageRouteInfo<ResultFormRouteArgs> {
  ResultFormRoute({
    _i21.Key? key,
    _i25.LotteryResultEntity? result,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          ResultFormRoute.name,
          args: ResultFormRouteArgs(
            key: key,
            result: result,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultFormRoute';

  static const _i20.PageInfo<ResultFormRouteArgs> page =
      _i20.PageInfo<ResultFormRouteArgs>(name);
}

class ResultFormRouteArgs {
  const ResultFormRouteArgs({
    this.key,
    this.result,
  });

  final _i21.Key? key;

  final _i25.LotteryResultEntity? result;

  @override
  String toString() {
    return 'ResultFormRouteArgs{key: $key, result: $result}';
  }
}

/// generated route for
/// [_i11.ResultView]
class ResultRoute extends _i20.PageRouteInfo<void> {
  const ResultRoute({List<_i20.PageRouteInfo>? children})
      : super(
          ResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SaleView]
class SaleRoute extends _i20.PageRouteInfo<void> {
  const SaleRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SaleRoute.name,
          initialChildren: children,
        );

  static const String name = 'SaleRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SettingsView]
class SettingsRoute extends _i20.PageRouteInfo<void> {
  const SettingsRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SignInView]
class SignInRoute extends _i20.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i21.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i20.PageInfo<SignInRouteArgs> page =
      _i20.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i21.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.SplashView]
class SplashRoute extends _i20.PageRouteInfo<void> {
  const SplashRoute({List<_i20.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i16.StandDetail]
class StandDetailRoute extends _i20.PageRouteInfo<StandDetailRouteArgs> {
  StandDetailRoute({
    _i21.Key? key,
    required _i26.LotteryStandEntity stand,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          StandDetailRoute.name,
          args: StandDetailRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandDetailRoute';

  static const _i20.PageInfo<StandDetailRouteArgs> page =
      _i20.PageInfo<StandDetailRouteArgs>(name);
}

class StandDetailRouteArgs {
  const StandDetailRouteArgs({
    this.key,
    required this.stand,
  });

  final _i21.Key? key;

  final _i26.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandDetailRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i17.StandFormView]
class StandFormRoute extends _i20.PageRouteInfo<StandFormRouteArgs> {
  StandFormRoute({
    _i21.Key? key,
    required _i26.LotteryStandEntity stand,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          StandFormRoute.name,
          args: StandFormRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandFormRoute';

  static const _i20.PageInfo<StandFormRouteArgs> page =
      _i20.PageInfo<StandFormRouteArgs>(name);
}

class StandFormRouteArgs {
  const StandFormRouteArgs({
    this.key,
    required this.stand,
  });

  final _i21.Key? key;

  final _i26.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandFormRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i18.StandPasswordView]
class StandPasswordRoute extends _i20.PageRouteInfo<StandPasswordRouteArgs> {
  StandPasswordRoute({
    _i21.Key? key,
    required _i26.LotteryStandEntity stand,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          StandPasswordRoute.name,
          args: StandPasswordRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandPasswordRoute';

  static const _i20.PageInfo<StandPasswordRouteArgs> page =
      _i20.PageInfo<StandPasswordRouteArgs>(name);
}

class StandPasswordRouteArgs {
  const StandPasswordRouteArgs({
    this.key,
    required this.stand,
  });

  final _i21.Key? key;

  final _i26.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandPasswordRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i16.StandView]
class StandRoute extends _i20.PageRouteInfo<void> {
  const StandRoute({List<_i20.PageRouteInfo>? children})
      : super(
          StandRoute.name,
          initialChildren: children,
        );

  static const String name = 'StandRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.TicketDetail]
class TicketDetailRoute extends _i20.PageRouteInfo<TicketDetailRouteArgs> {
  TicketDetailRoute({
    _i21.Key? key,
    required _i27.TicketEntity ticket,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          TicketDetailRoute.name,
          args: TicketDetailRouteArgs(
            key: key,
            ticket: ticket,
          ),
          initialChildren: children,
        );

  static const String name = 'TicketDetailRoute';

  static const _i20.PageInfo<TicketDetailRouteArgs> page =
      _i20.PageInfo<TicketDetailRouteArgs>(name);
}

class TicketDetailRouteArgs {
  const TicketDetailRouteArgs({
    this.key,
    required this.ticket,
  });

  final _i21.Key? key;

  final _i27.TicketEntity ticket;

  @override
  String toString() {
    return 'TicketDetailRouteArgs{key: $key, ticket: $ticket}';
  }
}

/// generated route for
/// [_i19.TicketView]
class TicketRoute extends _i20.PageRouteInfo<void> {
  const TicketRoute({List<_i20.PageRouteInfo>? children})
      : super(
          TicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'TicketRoute';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}
