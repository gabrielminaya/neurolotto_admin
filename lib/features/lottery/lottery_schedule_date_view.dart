import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/async_button_builder.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/entities/lottery_schedule_date_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/strings.g.dart';
import 'lottery_schedule_date_controller.dart';
import 'lottery_schedule_date_form_view.dart';

class LotteryScheduleDateView extends StatefulWidget {
  const LotteryScheduleDateView({super.key, required this.lottery});

  final LotteryEntity lottery;

  @override
  State<LotteryScheduleDateView> createState() => _LotteryScheduleDateViewState();
}

class _LotteryScheduleDateViewState extends State<LotteryScheduleDateView> {
  final _lotteryScheduleDateController = getIt.get<LotteryScheduleDateController>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _lotteryScheduleDateController.fetchScheduleDate(widget.lottery),
    );
  }

  Future<void> onDelete(
    BuildContext context,
    LotteryScheduleDateEntity lotteryScheduleDate,
  ) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.lottery.removeScheduleTitle),
        content: Text(t.lottery.removeScheduleContent),
        actions: [
          TextButton(
            onPressed: () => context.router.pop(),
            child: Text(t.common.back),
          ),
          _lotteryScheduleDateController.watch(
            (context, state) => AsyncButtonBuilder(
              idleStateWidget: Text(t.common.remove),
              state: state.isActionLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
              buttonWidget: (stateWidget) => TextButton(
                onPressed: () => _lotteryScheduleDateController.removeScheduleDate(
                  scheduleDate: lotteryScheduleDate,
                  onFailure: (message) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                    ),
                  ),
                  onSuccess: () => context.router.pop(),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: MaterialStateColor.resolveWith(
                    (_) => context.colorScheme.error,
                  ),
                ),
                child: stateWidget,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: LayoutBuilder(
        builder: (_, constraints) => FloatingActionButton(
          onPressed: () {
            if (constraints.maxWidth <= tabletBreakpoint) {
              router.push(LotteryScheduleDateFormRoute(lottery: widget.lottery));
              return;
            }

            showDialog(
              context: context,
              builder: (context) => AdaptativeDialog(
                child: LotteryScheduleDateFormView(lottery: widget.lottery),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: _lotteryScheduleDateController.watch(
        (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.failureMessage != null) {
            return Center(child: Text(state.failureMessage ?? ""));
          }

          if (state.lotteryScheduleDates.isEmpty) {
            return Center(
              child: Text(t.lottery.scheduleEmpty),
            );
          }

          return ListView.separated(
            itemCount: state.lotteryScheduleDates.length,
            separatorBuilder: (context, index) => const Divider(height: 0),
            itemBuilder: (context, index) {
              final lotteryScheduleDate = state.lotteryScheduleDates.elementAt(index);
              final timeOpen = DateFormat('hh:mm a').format(
                DateTime.parse("2023-01-01 ${lotteryScheduleDate.timeOpen}"),
              );

              final timeClose = DateFormat('hh:mm a').format(
                DateTime.parse("2023-01-01 ${lotteryScheduleDate.timeClose}"),
              );

              return ListTile(
                enabled: !lotteryScheduleDate.isClosed,
                title: Text(DateFormat("EEEE d MMM, yyyy").format(lotteryScheduleDate.effectiveDate)),
                leading: const Icon(Icons.schedule),
                subtitle: Text(
                  "$timeOpen - $timeClose ${lotteryScheduleDate.isClosed ? "(${t.lottery.isClosed})" : ""}",
                ),
                trailing: LayoutBuilder(
                  builder: (context, constraints) => TextButton.icon(
                    onPressed: () => onDelete(context, lotteryScheduleDate),
                    icon: const Icon(Icons.delete),
                    label: Text(t.common.remove),
                    style: TextButton.styleFrom(
                      foregroundColor: MaterialStateColor.resolveWith(
                        (_) => context.colorScheme.error,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
