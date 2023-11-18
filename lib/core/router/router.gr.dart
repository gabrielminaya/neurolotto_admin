// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:neurolotto_admin/core/entities/group_entity.dart' as _i16;
import 'package:neurolotto_admin/core/entities/lottery_entity.dart' as _i17;
import 'package:neurolotto_admin/core/entities/lottery_stand_entity.dart'
    as _i18;
import 'package:neurolotto_admin/features/auth/sign_in_view.dart'
    deferred as _i8;
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
import 'package:neurolotto_admin/features/splash/splash_view.dart'
    deferred as _i9;
import 'package:neurolotto_admin/features/stand/stand_form_view.dart'
    deferred as _i10;
import 'package:neurolotto_admin/features/stand/stand_password_view.dart'
    deferred as _i11;
import 'package:neurolotto_admin/features/stand/stand_view.dart'
    deferred as _i12;
import 'package:neurolotto_admin/features/ticket/ticket_view.dart'
    deferred as _i13;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    ConsortiumRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.ConsortiumView(),
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.DashboardView(),
        ),
      );
    },
    GroupFormRoute.name: (routeData) {
      final args = routeData.argsAs<GroupFormRouteArgs>(
          orElse: () => const GroupFormRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.GroupFormView(
            key: args.key,
            group: args.group,
          ),
        ),
      );
    },
    GroupRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.GroupView(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i5.loadLibrary,
          () => _i5.HomeView(),
        ),
      );
    },
    LotteryFormRoute.name: (routeData) {
      final args = routeData.argsAs<LotteryFormRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i6.loadLibrary,
          () => _i6.LotteryFormView(
            key: args.key,
            lottery: args.lottery,
          ),
        ),
      );
    },
    LotteryRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i7.loadLibrary,
          () => _i7.LotteryView(),
        ),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i8.loadLibrary,
          () => _i8.SignInView(key: args.key),
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i9.loadLibrary,
          () => _i9.SplashView(),
        ),
      );
    },
    StandFormRoute.name: (routeData) {
      final args = routeData.argsAs<StandFormRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i10.loadLibrary,
          () => _i10.StandFormView(
            key: args.key,
            stand: args.stand,
          ),
        ),
      );
    },
    StandPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<StandPasswordRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i11.loadLibrary,
          () => _i11.StandPasswordView(
            key: args.key,
            stand: args.stand,
          ),
        ),
      );
    },
    StandRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i12.loadLibrary,
          () => _i12.StandView(),
        ),
      );
    },
    TicketRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.DeferredWidget(
          _i13.loadLibrary,
          () => _i13.TicketView(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ConsortiumView]
class ConsortiumRoute extends _i14.PageRouteInfo<void> {
  const ConsortiumRoute({List<_i14.PageRouteInfo>? children})
      : super(
          ConsortiumRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConsortiumRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardView]
class DashboardRoute extends _i14.PageRouteInfo<void> {
  const DashboardRoute({List<_i14.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.GroupFormView]
class GroupFormRoute extends _i14.PageRouteInfo<GroupFormRouteArgs> {
  GroupFormRoute({
    _i15.Key? key,
    _i16.GroupEntity? group,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          GroupFormRoute.name,
          args: GroupFormRouteArgs(
            key: key,
            group: group,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupFormRoute';

  static const _i14.PageInfo<GroupFormRouteArgs> page =
      _i14.PageInfo<GroupFormRouteArgs>(name);
}

class GroupFormRouteArgs {
  const GroupFormRouteArgs({
    this.key,
    this.group,
  });

  final _i15.Key? key;

  final _i16.GroupEntity? group;

  @override
  String toString() {
    return 'GroupFormRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [_i4.GroupView]
class GroupRoute extends _i14.PageRouteInfo<void> {
  const GroupRoute({List<_i14.PageRouteInfo>? children})
      : super(
          GroupRoute.name,
          initialChildren: children,
        );

  static const String name = 'GroupRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeView]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LotteryFormView]
class LotteryFormRoute extends _i14.PageRouteInfo<LotteryFormRouteArgs> {
  LotteryFormRoute({
    _i15.Key? key,
    required _i17.LotteryEntity lottery,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          LotteryFormRoute.name,
          args: LotteryFormRouteArgs(
            key: key,
            lottery: lottery,
          ),
          initialChildren: children,
        );

  static const String name = 'LotteryFormRoute';

  static const _i14.PageInfo<LotteryFormRouteArgs> page =
      _i14.PageInfo<LotteryFormRouteArgs>(name);
}

class LotteryFormRouteArgs {
  const LotteryFormRouteArgs({
    this.key,
    required this.lottery,
  });

  final _i15.Key? key;

  final _i17.LotteryEntity lottery;

  @override
  String toString() {
    return 'LotteryFormRouteArgs{key: $key, lottery: $lottery}';
  }
}

/// generated route for
/// [_i7.LotteryView]
class LotteryRoute extends _i14.PageRouteInfo<void> {
  const LotteryRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LotteryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LotteryRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignInView]
class SignInRoute extends _i14.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i14.PageInfo<SignInRouteArgs> page =
      _i14.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.SplashView]
class SplashRoute extends _i14.PageRouteInfo<void> {
  const SplashRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.StandFormView]
class StandFormRoute extends _i14.PageRouteInfo<StandFormRouteArgs> {
  StandFormRoute({
    _i15.Key? key,
    required _i18.LotteryStandEntity stand,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          StandFormRoute.name,
          args: StandFormRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandFormRoute';

  static const _i14.PageInfo<StandFormRouteArgs> page =
      _i14.PageInfo<StandFormRouteArgs>(name);
}

class StandFormRouteArgs {
  const StandFormRouteArgs({
    this.key,
    required this.stand,
  });

  final _i15.Key? key;

  final _i18.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandFormRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i11.StandPasswordView]
class StandPasswordRoute extends _i14.PageRouteInfo<StandPasswordRouteArgs> {
  StandPasswordRoute({
    _i15.Key? key,
    required _i18.LotteryStandEntity stand,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          StandPasswordRoute.name,
          args: StandPasswordRouteArgs(
            key: key,
            stand: stand,
          ),
          initialChildren: children,
        );

  static const String name = 'StandPasswordRoute';

  static const _i14.PageInfo<StandPasswordRouteArgs> page =
      _i14.PageInfo<StandPasswordRouteArgs>(name);
}

class StandPasswordRouteArgs {
  const StandPasswordRouteArgs({
    this.key,
    required this.stand,
  });

  final _i15.Key? key;

  final _i18.LotteryStandEntity stand;

  @override
  String toString() {
    return 'StandPasswordRouteArgs{key: $key, stand: $stand}';
  }
}

/// generated route for
/// [_i12.StandView]
class StandRoute extends _i14.PageRouteInfo<void> {
  const StandRoute({List<_i14.PageRouteInfo>? children})
      : super(
          StandRoute.name,
          initialChildren: children,
        );

  static const String name = 'StandRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.TicketView]
class TicketRoute extends _i14.PageRouteInfo<void> {
  const TicketRoute({List<_i14.PageRouteInfo>? children})
      : super(
          TicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'TicketRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
