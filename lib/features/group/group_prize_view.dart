import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/group_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import 'group_prize_form_view.dart';
import 'group_prize_lottery_controller.dart';

class GroupPrizeView extends StatefulWidget {
  const GroupPrizeView({super.key, required this.group});

  final GroupEntity group;

  @override
  State<GroupPrizeView> createState() => _GroupPrizeViewState();
}

class _GroupPrizeViewState extends State<GroupPrizeView> {
  final _groupPrizeController = getIt.get<GroupPrizeLotteryController>();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _groupPrizeController.fetchLotteries(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _groupPrizeController.watch(
        (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.failureMessage != null) {
            return Center(child: Text(state.failureMessage ?? ""));
          }

          return LayoutBuilder(
            builder: (context, constraints) => ListView.separated(
              itemCount: state.prizes.length,
              separatorBuilder: (context, index) => const Divider(height: 0),
              itemBuilder: (context, index) {
                final prize = state.prizes.elementAt(index);

                return ListTile(
                  onTap: () {
                    if (constraints.maxWidth <= tabletBreakpoint) {
                      router.push(GroupPrizeFormRoute(prize: prize, group: widget.group));
                      return;
                    }

                    showDialog(
                      context: context,
                      builder: (context) => AdaptativeDialog(
                        child: GroupPrizeFormView(prize: prize, group: widget.group),
                      ),
                    );
                  },
                  leading: const Icon(Icons.store),
                  title: Text(prize.lottery.name),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
