import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'lottery_controller.dart';
import 'lottery_list_view.dart';
import 'lottery_schedule_controller.dart';
import 'lottery_schedule_date_view.dart';
import 'lottery_schedule_view.dart';

@RoutePage()
class LotteryView extends StatefulWidget {
  const LotteryView({super.key});

  @override
  State<LotteryView> createState() => _LotteryViewState();
}

class _LotteryViewState extends State<LotteryView> {
  final _lotteryController = getIt.get<LotteryController>();
  final _lotteryScheduleController = getIt.get<LotteryScheduleController>();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _lotteryController.fetch(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _lotteryController.watch((context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.failureMessage != null) {
          return Center(child: Text(state.failureMessage ?? ""));
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= tabletBreakpoint) {
              return LotteryListView(
                lotteries: state.lotteries,
                selectedLottery: state.selectedLottery,
                onLotterySelected: (lottery) {
                  _lotteryController.select(lottery);
                  router.push(LotteryTabsRoute(lottery: lottery));
                },
              );
            }

            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: LotteryListView(
                    lotteries: state.lotteries,
                    selectedLottery: state.selectedLottery,
                    onLotterySelected: (lottery) {
                      _lotteryController.select(lottery);
                      _lotteryScheduleController.fetchSchedule(lottery);
                    },
                  ),
                ),
                const VerticalDivider(width: 0),
                Flexible(
                  flex: 3,
                  child: _lotteryController.watch(
                    (_, state) {
                      if (state.selectedLottery == null) {
                        return Center(
                          child: Text(t.lottery.selectALottery),
                        );
                      }

                      return LotteryTabsView(lottery: state.selectedLottery!);
                    },
                  ),
                ),
              ],
            );
          },
        );
      }),
    );
  }
}

@RoutePage(name: "LotteryTabsRoute")
class LotteryTabsView extends StatelessWidget {
  LotteryTabsView({super.key, required this.lottery});

  final LotteryEntity lottery;
  final _lotteryController = getIt.get<LotteryController>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: LayoutBuilder(
        builder: (context, constraints) => Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                title: Text(lottery.name),
                centerTitle: false,
                floating: true,
                pinned: true,
                bottom: TabBar(
                  isScrollable: constraints.maxWidth < tabletBreakpoint ? false : true,
                  tabAlignment: constraints.maxWidth < tabletBreakpoint ? TabAlignment.fill : TabAlignment.start,
                  tabs: [
                    Tab(text: t.lottery.schedules),
                    Tab(text: t.lottery.detail),
                  ],
                ),
                actions: [
                  _lotteryController.watch(
                    (context, state) {
                      if (state.isActionLoading) {
                        return Switch(
                          value: state.selectedLottery?.status ?? false,
                          onChanged: (_) {},
                          thumbIcon: const MaterialStatePropertyAll(
                            Icon(Icons.change_circle_outlined),
                          ),
                        );
                      }

                      return Switch(
                        value: state.selectedLottery?.status ?? false,
                        thumbIcon: MaterialStatePropertyAll(
                          Icon((state.selectedLottery?.status ?? false) ? Icons.check : Icons.close),
                        ),
                        onChanged: (value) => _lotteryController.update(
                          lottery: lottery.copyWith(status: value),
                          onFailure: (message) => ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(message)),
                          ),
                          onSuccess: () {},
                        ),
                      );
                    },
                  ),
                  hgap(10),
                ],
              ),
            ],
            body: TabBarView(children: [
              LotteryScheduleView(lottery: lottery),
              LotteryScheduleDateView(lottery: lottery),
            ]),
          ),
        ),
      ),
    );
  }
}
