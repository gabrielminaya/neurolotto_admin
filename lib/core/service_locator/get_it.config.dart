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
import 'package:neurolotto_admin/features/auth/auth_controller.dart' as _i10;
import 'package:neurolotto_admin/features/consortium/consortium_controller.dart'
    as _i11;
import 'package:neurolotto_admin/features/dashboard/dashboard_controller.dart'
    as _i12;
import 'package:neurolotto_admin/features/group/group_controller.dart' as _i13;
import 'package:neurolotto_admin/features/lottery/lottery_controller.dart'
    as _i14;
import 'package:neurolotto_admin/features/sales/sale_controller.dart' as _i4;
import 'package:neurolotto_admin/features/settings/thememode_controller.dart'
    as _i7;
import 'package:neurolotto_admin/features/splash/splash_controller.dart'
    as _i15;
import 'package:neurolotto_admin/features/stand/stand_controller.dart' as _i16;
import 'package:neurolotto_admin/features/stand/stand_form_controller.dart'
    as _i17;
import 'package:neurolotto_admin/features/stand/stand_password_controller.dart'
    as _i18;
import 'package:neurolotto_admin/features/ticket/ticket_controller.dart' as _i8;
import 'package:neurolotto_admin/features/ticket/ticket_detail_controller.dart'
    as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i5;
import 'package:supabase_flutter/supabase_flutter.dart' as _i6;

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
    gh.lazySingleton<_i4.SaleController>(() => _i4.SaleController());
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i6.SupabaseClient>(registerModule.supabase);
    gh.singleton<_i7.ThemeModeController>(_i7.ThemeModeController());
    gh.lazySingleton<_i8.TicketController>(
        () => _i8.TicketController(gh<_i6.SupabaseClient>()));
    gh.lazySingleton<_i9.TicketDetailController>(
        () => _i9.TicketDetailController(gh<_i6.SupabaseClient>()));
    gh.singleton<_i10.AuthController>(
        _i10.AuthController(gh<_i6.SupabaseClient>()));
    gh.factory<_i11.ConsortiumController>(
        () => _i11.ConsortiumController(gh<_i6.SupabaseClient>()));
    gh.lazySingleton<_i12.DashboardController>(
        () => _i12.DashboardController(gh<_i6.SupabaseClient>()));
    gh.lazySingleton<_i13.GroupController>(
        () => _i13.GroupController(gh<_i6.SupabaseClient>()));
    gh.lazySingleton<_i14.LotteryController>(
        () => _i14.LotteryController(gh<_i6.SupabaseClient>()));
    gh.factory<_i15.SplashController>(
        () => _i15.SplashController(gh<_i6.SupabaseClient>()));
    gh.factory<_i16.StandController>(
        () => _i16.StandController(gh<_i6.SupabaseClient>()));
    gh.factory<_i17.StandFormController>(
        () => _i17.StandFormController(gh<_i6.SupabaseClient>()));
    gh.factory<_i18.StandPasswordController>(
        () => _i18.StandPasswordController(gh<_i6.SupabaseClient>()));
    return this;
  }
}

class _$RegisterModule extends _i19.RegisterModule {}
