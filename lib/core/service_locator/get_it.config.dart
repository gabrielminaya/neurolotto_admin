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
import 'package:neurolotto_admin/core/service_locator/get_it.dart' as _i27;
import 'package:neurolotto_admin/features/auth/auth_controller.dart' as _i9;
import 'package:neurolotto_admin/features/consortium/consortium_controller.dart'
    as _i10;
import 'package:neurolotto_admin/features/dashboard/dashboard_controller.dart'
    as _i11;
import 'package:neurolotto_admin/features/group/group_controller.dart' as _i12;
import 'package:neurolotto_admin/features/group/group_play_constraint_controller.dart'
    as _i13;
import 'package:neurolotto_admin/features/group/group_prize_lottery_controller.dart'
    as _i14;
import 'package:neurolotto_admin/features/lottery/lottery_controller.dart'
    as _i15;
import 'package:neurolotto_admin/features/lottery/lottery_schedule_controller.dart'
    as _i16;
import 'package:neurolotto_admin/features/lottery/lottery_schedule_date_controller.dart'
    as _i17;
import 'package:neurolotto_admin/features/result/result_lotteries_controller.dart'
    as _i18;
import 'package:neurolotto_admin/features/result/result_plays_controller.dart'
    as _i19;
import 'package:neurolotto_admin/features/sales/sale_detail_controller.dart'
    as _i21;
import 'package:neurolotto_admin/features/sales/sale_summary_controller.dart'
    as _i20;
import 'package:neurolotto_admin/features/settings/thememode_controller.dart'
    as _i6;
import 'package:neurolotto_admin/features/splash/splash_controller.dart'
    as _i22;
import 'package:neurolotto_admin/features/stand/stand_controller.dart' as _i23;
import 'package:neurolotto_admin/features/stand/stand_password_controller.dart'
    as _i24;
import 'package:neurolotto_admin/features/stand/stand_play_constraint_controller.dart'
    as _i25;
import 'package:neurolotto_admin/features/stand/stand_prize_lottery_controller.dart'
    as _i26;
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
    gh.lazySingleton<_i13.GroupPlayConstraintController>(
        () => _i13.GroupPlayConstraintController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i14.GroupPrizeLotteryController>(
        () => _i14.GroupPrizeLotteryController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i15.LotteryController>(
        () => _i15.LotteryController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i16.LotteryScheduleController>(
        () => _i16.LotteryScheduleController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i17.LotteryScheduleDateController>(
        () => _i17.LotteryScheduleDateController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i18.ResultLotteriesController>(
        () => _i18.ResultLotteriesController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i19.ResultPlaysController>(
        () => _i19.ResultPlaysController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i20.SaleController>(
        () => _i20.SaleController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i21.SaleDetailController>(
        () => _i21.SaleDetailController(gh<_i5.SupabaseClient>()));
    gh.factory<_i22.SplashController>(
        () => _i22.SplashController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i23.StandController>(
        () => _i23.StandController(gh<_i5.SupabaseClient>()));
    gh.factory<_i24.StandPasswordController>(
        () => _i24.StandPasswordController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i25.StandPlayConstraintController>(
        () => _i25.StandPlayConstraintController(gh<_i5.SupabaseClient>()));
    gh.lazySingleton<_i26.StandPrizeLotteryController>(
        () => _i26.StandPrizeLotteryController(gh<_i5.SupabaseClient>()));
    return this;
  }
}

class _$RegisterModule extends _i27.RegisterModule {}
