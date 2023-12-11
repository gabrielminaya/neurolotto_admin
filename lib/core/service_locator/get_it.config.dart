// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neurolotto_admin/core/router/router.dart' as _i3;
import 'package:neurolotto_admin/core/service_locator/get_it.dart' as _i19;
import 'package:neurolotto_admin/features/auth/auth_controller.dart' as _i9;
import 'package:neurolotto_admin/features/consortium/consortium_controller.dart'
    as _i10;
import 'package:neurolotto_admin/features/dashboard/dashboard_controller.dart'
    as _i11;
import 'package:neurolotto_admin/features/group/group_controller.dart' as _i12;
import 'package:neurolotto_admin/features/lottery/lottery_controller.dart'
    as _i13;
import 'package:neurolotto_admin/features/sales/result_controller.dart' as _i14;
import 'package:neurolotto_admin/features/sales/sale_controller.dart' as _i15;
import 'package:neurolotto_admin/features/settings/thememode_controller.dart'
    as _i6;
import 'package:neurolotto_admin/features/splash/splash_controller.dart'
    as _i16;
import 'package:neurolotto_admin/features/stand/stand_controller.dart' as _i17;
import 'package:neurolotto_admin/features/stand/stand_password_controller.dart'
    as _i18;
import 'package:neurolotto_admin/features/ticket/ticket_controller.dart' as _i7;
import 'package:neurolotto_admin/features/ticket/ticket_detail_controller.dart'
    as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i4;
import 'package:supabase_flutter/supabase_flutter.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i5.SupabaseClient>(registerModule.supabase);
    gh.singleton<_i6.ThemeModeController>(_i6.ThemeModeController());
    gh.lazySingleton<_i7.TicketController>(
        () => _i7.TicketController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i8.TicketDetailController>(
        () => _i8.TicketDetailController(gh<_i5.SupabaseClient>()));
    gh.singleton<_i9.AuthController>(
        _i9.AuthController(gh<_i5.SupabaseClient>()));
    gh.factory<_i10.ConsortiumController>(
        () => _i10.ConsortiumController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i11.DashboardController>(
        () => _i11.DashboardController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i12.GroupController>(
        () => _i12.GroupController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i13.LotteryController>(
        () => _i13.LotteryController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i14.ResultController>(
        () => _i14.ResultController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i15.SaleController>(
        () => _i15.SaleController(gh<_i5.SupabaseClient>()));
    gh.factory<_i16.SplashController>(
        () => _i16.SplashController(gh<_i5.SupabaseClient>()));
    gh.factory<_i17.StandController>(
        () => _i17.StandController(gh<_i5.SupabaseClient>()));
    gh.factory<_i18.StandPasswordController>(
        () => _i18.StandPasswordController(gh<_i5.SupabaseClient>()));
    return this;
  }
}

class _$RegisterModule extends _i19.RegisterModule {}
