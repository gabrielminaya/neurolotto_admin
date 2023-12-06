// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;
import 'package:neurolotto_admin/core/entities/group_entity.dart' as _i18;
import 'package:neurolotto_admin/core/entities/lottery_entity.dart' as _i19;
import 'package:neurolotto_admin/core/entities/lottery_stand_entity.dart'
    as _i20;
import 'package:neurolotto_admin/features/auth/sign_in_view.dart'
    deferred as _i10;
import 'package:neurolotto_admin/features/consortium/consortium_view.dart'
    deferred as _i1;
import 'package:neurolotto_admin/features/dashboard/dashboard_view.dart'
    deferred as _i2;
import 'package:neurolotto_admin/features/group/group_form_view.dart'
    deferred as _i3;
import 'package:neurolotto_admin/features/group/group_view.dart'
    deferred as _i4;
import 'package:neurolotto_admin/features/home/home_view.dart' deferred as _i5;
import 'package:neurolotto_admin/features/lottery/lottery_form_view.dart'
    deferred as _i6;
import 'package:neurolotto_admin/features/lottery/lottery_view.dart'
    deferred as _i7;
import 'package:neurolotto_admin/features/sales/result_view.dart'
    deferred as _i8;
import 'package:neurolotto_admin/features/sales/sale_view.dart' deferred as _i9;
import 'package:neurolotto_admin/features/splash/splash_view.dart'
    deferred as _i11;
import 'package:neurolotto_admin/features/stand/stand_form_view.dart'
    deferred as _i12;
import 'package:neurolotto_admin/features/stand/stand_password_view.dart'
    deferred as _i13;
import 'package:neurolotto_admin/features/stand/stand_view.dart'
    deferred as _i14;
import 'package:neurolotto_admin/features/ticket/ticket_view.dart'
    deferred as _i15;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    ConsortiumRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.ConsortiumView(),
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.DashboardView(),
        ),
      );
    },
    GroupFormRoute.name: (routeData) {
      final args = routeData.argsAs<GroupFormRouteArgs>(
          orElse: () => const GroupFormRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.GroupFormView(
            key: args.key,
            group: args.group,
          ),
        ),
      );
    },
    GroupRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.GroupView(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.HomeView(),
        ),
      );
    },
    LotteryFormRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryFormRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.LotteryFormView(
            key: args.key,
            lottery: args.lottery,
          ),
        ),
      );
    },
    LotteryRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.LotteryView(),
        ),
      );
    },
    ResultRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i8.loadLibrary,
          () => _i8.ResultView(),
        ),
      );
    },
    SaleRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.SaleView(),
        ),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i10.loadLibrary,
          () => _i10.SignInView(key: args.key),
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i11.loadLibrary,
          () => _i11.SplashView(),
        ),
      );
    },
    StandFormRoute.name: (routeData) {
      final args = routeData.argsAs<StandFormRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i12.loadLibrary,
          () => _i12.StandFormView(
            key: args.key,
            stand: args.stand,
          ),
        ),
      );
    },
    StandPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<StandPasswordRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i13.loadLibrary,
          () => _i13.StandPasswordView(
            key: args.key,
            stand: args.stand,
          ),
        ),
      );
    },
    StandRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i14.loadLibrary,
          () => _i14.StandView(),
        ),
      );
    },
    TicketRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i15.loadLibrary,
          () => _i15.TicketView(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ConsortiumView]
class ConsortiumRoute extends _i16.PageRouteInfo<void> {
  const ConsortiumRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ConsortiumRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConsortiumRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardView]
class DashboardRoute extends _i16.PageRouteInfo<void> {
  const DashboardRoute({List<_i16.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GroupFormView]
class GroupFormRoute extends _i16.PageRouteInfo<GroupFormRouteArgs> {
  GroupFormRoute({
    _i17.Key? key,
    _i18.GroupEntity? group,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          GroupFormRoute.name,
          args: GroupFormRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupFormRoute';

  static const _i16.PageInfo<GroupFormRouteArgs> page =
      _i16.PageInfo<GroupFormRouteArgs>(name);
}

class GroupFormRouteArgs {
  const GroupFormRouteArgs({
    this.key,
    this.group,
  });

  final _i17.Key? key;

  final _i18.GroupEntity? group;

  @override
  String toString() {
    return 'GroupFormRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [_i4.GroupView]
class GroupRoute extends _i16.PageRouteInfo<void> {
  const GroupRoute({List<_i16.PageRouteInfo>? children})
      : super(
          GroupRoute.name,
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeView]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LotteryFormView]
class LotteryFormRoute extends _i16.PageRouteInfo<LotteryFormRouteArgs> {
  LotteryFormRoute({
    _i17.Key? key,
    required _i19.LotteryEntity lottery,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          LotteryFormRoute.name,
          args: LotteryFormRouteArgs(
            key: key,
            lottery: lottery,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryFormRoute';

  static const _i16.PageInfo<LotteryFormRouteArgs> page =
      _i16.PageInfo<LotteryFormRouteArgs>(name);
}

class LotteryFormRouteArgs {
  const LotteryFormRouteArgs({
    this.key,
    required this.lottery,
  });

  final _i17.Key? key;

  final _i19.LotteryEntity lottery;

  @override
  String toString() {
    return 'LotteryFormRouteArgs{key: $key, lottery: $lottery}';
  }
}

/// generated route for
/// [_i7.LotteryView]
class LotteryRoute extends _i16.PageRouteInfo<void> {
  const LotteryRoute({List<_i16.PageRouteInfo>? children})
      : super(
          LotteryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LotteryRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ResultView]
class ResultRoute extends _i16.PageRouteInfo<void> {
  const ResultRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SaleView]
class SaleRoute extends _i16.PageRouteInfo<void> {
  const SaleRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SaleRoute.name,
          initialChildren: children,
        );

  static const String name = 'SaleRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SignInView]
class SignInRoute extends _i16.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i16.PageInfo<SignInRouteArgs> page =
      _i16.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i17.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.SplashView]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.StandFormView]
class StandFormRoute extends _i16.PageRouteInfo<StandFormRouteArgs> {
  StandFormRoute({
    _i17.Key? key,
    required _i20.LotteryStandEntity stand,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          StandFormRoute.name,
          args: StandFormRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandFormRoute';

  static const _i16.PageInfo<StandFormRouteArgs> page =
      _i16.PageInfo<StandFormRouteArgs>(name);
}

class StandFormRouteArgs {
  const StandFormRouteArgs({
    this.key,
    required this.stand,
  });

  final _i17.Key? key;

  final _i20.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandFormRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i13.StandPasswordView]
class StandPasswordRoute extends _i16.PageRouteInfo<StandPasswordRouteArgs> {
  StandPasswordRoute({
    _i17.Key? key,
    required _i20.LotteryStandEntity stand,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          StandPasswordRoute.name,
          args: StandPasswordRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandPasswordRoute';

  static const _i16.PageInfo<StandPasswordRouteArgs> page =
      _i16.PageInfo<StandPasswordRouteArgs>(name);
}

class StandPasswordRouteArgs {
  const StandPasswordRouteArgs({
    this.key,
    required this.stand,
  });

  final _i17.Key? key;

  final _i20.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandPasswordRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i14.StandView]
class StandRoute extends _i16.PageRouteInfo<void> {
  const StandRoute({List<_i16.PageRouteInfo>? children})
      : super(
          StandRoute.name,
          initialChildren: children,
        );

  static const String name = 'StandRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.TicketView]
class TicketRoute extends _i16.PageRouteInfo<void> {
  const TicketRoute({List<_i16.PageRouteInfo>? children})
      : super(
          TicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'TicketRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
