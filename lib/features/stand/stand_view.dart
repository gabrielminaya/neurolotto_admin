import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'stand_controller.dart';
import 'stand_detail_view.dart';
import 'stand_list_view.dart';
import 'stand_play_constraint_view.dart';
import 'stand_prizes_view.dart';

@RoutePage()
class StandView extends StatefulWidget {
  const StandView({super.key});

  @override
  State<StandView> createState() => _StandViewState();
}

class _StandViewState extends State<StandView> {
  final _standController = getIt.get<StandController>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _standController.fetch(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _standController.watch((context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.failureMessage != null) {
          return Center(child: Text(state.failureMessage ?? ""));
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= tabletBreakpoint) {
              return StandListView(
                stands: state.stands,
                selectedStand: state.currentStand,
                onStandSelected: (stand) {
                  _standController.setStand(stand);
                  router.push(StandTabsRoute(stand: stand));
                },
              );
            }

            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: StandListView(
                    stands: state.stands,
                    selectedStand: state.currentStand,
                    onStandSelected: (stand) {
                      _standController.setStand(stand);
                    },
                  ),
                ),
                const VerticalDivider(width: 0),
                Flexible(
                  flex: 3,
                  child: Builder(builder: (_) {
                    if (state.currentStand == null) {
                      return Center(
                        child: Text(t.stand.selectAStand),
                      );
                    }

                    return StandTabsView(stand: state.currentStand!);
                  }),
                ),
              ],
            );
          },
        );
      }),
    );
  }
}

@RoutePage(name: "StandTabsRoute")
class StandTabsView extends StatelessWidget {
  const StandTabsView({super.key, required this.stand});

  final LotteryStandEntity stand;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: LayoutBuilder(
        builder: (context, constraints) => Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                title: Text(stand.name),
                centerTitle: false,
                floating: true,
                pinned: true,
                bottom: TabBar(
                  isScrollable: constraints.maxWidth < tabletBreakpoint ? false : true,
                  tabAlignment: constraints.maxWidth < tabletBreakpoint ? TabAlignment.fill : TabAlignment.start,
                  tabs: [
                    Tab(text: t.stand.detail),
                    Tab(text: t.stand.prizes),
                    Tab(text: t.stand.constraints),
                  ],
                ),
              ),
            ],
            body: TabBarView(
              children: [
                StandDetailView(stand: stand),
                StandPrizeView(stand: stand, key: Key("Prize-${stand.id}")),
                StandPlayConstraintView(stand: stand, key: Key("Constraint-${stand.id}")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
