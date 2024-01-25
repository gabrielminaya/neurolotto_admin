import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'lottery_schedule_controller.dart';
import 'lottery_schedule_form_view.dart';

@RoutePage()
class LotteryScheduleView extends StatefulWidget {
  const LotteryScheduleView({
    super.key,
    required this.lottery,
  });

  final LotteryEntity lottery;

  @override
  State<LotteryScheduleView> createState() => _LotteryScheduleViewState();
}

class _LotteryScheduleViewState extends State<LotteryScheduleView> {
  final _lotteryScheduleController = getIt.get<LotteryScheduleController>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _lotteryScheduleController.fetchSchedule(widget.lottery),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _lotteryScheduleController.watch((context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.failureMessage != null) {
          return Center(
            child: Text(state.failureMessage ?? ""),
          );
        }

        if (state.schedules.isEmpty) {
          return Center(
            child: Text(t.lottery.scheduleEmpty),
          );
        }

        return ListView.separated(
          itemCount: state.schedules.length,
          separatorBuilder: (context, index) => const Divider(height: 0),
          itemBuilder: (context, index) {
            final schedule = state.schedules.elementAt(index);
            final timeOpen = DateFormat('hh:mm a').format(DateTime.parse("2023-01-01 ${schedule.timeOpen}"));
            final timeClose = DateFormat('hh:mm a').format(DateTime.parse("2023-01-01 ${schedule.timeClose}"));

            return ListTile(
              enabled: !schedule.isClosed,
              leading: const Icon(Icons.schedule),
              title: Text(DateFormat('EEEE').format(DateTime(2022, 8, schedule.lotteryDayId))),
              subtitle: Text(
                "$timeOpen - $timeClose ${schedule.isClosed ? "(${t.lottery.isClosed})" : ""}",
              ),
              trailing: LayoutBuilder(
                builder: (context, constraints) => TextButton.icon(
                  onPressed: () {
                    if (constraints.maxWidth <= tabletBreakpoint) {
                      router.push(LotteryScheduleFormRoute(lotterySchedule: schedule));
                      return;
                    }

                    showDialog(
                      context: context,
                      builder: (context) => AdaptativeDialog(
                        child: LotteryScheduleFormView(lotterySchedule: schedule),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit),
                  label: Text(t.common.edit),
                  style: TextButton.styleFrom(
                      foregroundColor: MaterialStateColor.resolveWith(
                    (_) => context.colorScheme.secondary,
                  )),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
