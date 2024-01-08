import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import 'stand_prize_form_view.dart';
import 'stand_prize_lottery_controller.dart';

class StandPrizeView extends StatefulWidget {
  const StandPrizeView({super.key, required this.stand});

  final LotteryStandEntity stand;

  @override
  State<StandPrizeView> createState() => _StandPrizeViewState();
}

class _StandPrizeViewState extends State<StandPrizeView> {
  final _standPrizeController = getIt.get<StandPrizeLotteryController>();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _standPrizeController.fetchLotteries(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _standPrizeController.watch(
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
                      router.push(StandPrizeFormRoute(prize: prize, stand: widget.stand));
                      return;
                    }

                    showDialog(
                      context: context,
                      builder: (context) => AdaptativeDialog(
                        child: StandPrizeFormView(prize: prize, stand: widget.stand),
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
