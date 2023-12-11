import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/strings.g.dart';
import 'lottery_controller.dart';
import 'lottery_form_view.dart';

@RoutePage()
class LotteryView extends StatefulWidget {
  const LotteryView({super.key});

  @override
  State<LotteryView> createState() => _LotteryViewState();
}

class _LotteryViewState extends State<LotteryView> {
  final _lotteryController = getIt.get<LotteryController>();

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
              return LotteryItems(
                lotteries: state.lotteries,
                selectedLottery: state.selectedLottery,
                onLotterySelected: (lottery) {
                  _lotteryController.select(lottery);
                  router.push(LotteryDetailRoute(lottery: lottery));
                },
              );
            }

            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: LotteryItems(
                    lotteries: state.lotteries,
                    selectedLottery: state.selectedLottery,
                    onLotterySelected: (lottery) => _lotteryController.select(lottery),
                  ),
                ),
                const VerticalDivider(width: 0),
                Flexible(
                  flex: 3,
                  child: Builder(
                    builder: (_) {
                      if (state.selectedLottery == null) {
                        return Center(
                          child: Text(t.lottery.selectALottery),
                        );
                      }

                      return LotteryDetail(lottery: state.selectedLottery!);
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

class LotteryItems extends StatelessWidget {
  const LotteryItems({
    super.key,
    required this.lotteries,
    this.selectedLottery,
    required this.onLotterySelected,
  });

  final List<LotteryEntity> lotteries;
  final LotteryEntity? selectedLottery;
  final ValueChanged<LotteryEntity> onLotterySelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.lottery.title),
        centerTitle: false,
      ),
      body: ListView.separated(
        itemCount: lotteries.length,
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final lottery = lotteries.elementAt(index);

          return ListTile(
            leading: const Icon(Icons.group_work_outlined),
            selected: selectedLottery == lottery,
            title: Text(lottery.name),
            onTap: () => onLotterySelected(lottery),
            trailing: Visibility(
              visible: selectedLottery == lottery,
              child: const Icon(Icons.arrow_right),
            ),
          );
        },
      ),
    );
  }
}

@RoutePage(name: "LotteryDetailRoute")
class LotteryDetail extends StatelessWidget {
  const LotteryDetail({super.key, required this.lottery});

  final LotteryEntity lottery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: LayoutBuilder(
        builder: (_, constraints) => FloatingActionButton(
          onPressed: () {
            if (constraints.maxWidth <= tabletBreakpoint) {
              router.push(LotteryFormRoute(lottery: lottery));
              return;
            }

            showDialog(
              context: context,
              builder: (context) => AdaptativeDialog(
                child: LotteryFormView(lottery: lottery),
              ),
            );
          },
          child: const Icon(Icons.edit),
        ),
      ),
      appBar: AppBar(
        title: Text(t.lottery.detail),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.group_work_outlined),
            title: Text(t.lottery.name),
            subtitle: Text(lottery.name),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: Text(t.lottery.timeOpen),
            subtitle: Text(lottery.timeOpen),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: Text(t.lottery.timeClose),
            subtitle: Text(lottery.timeClose),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.lottery.quinielaFirstPrize),
            subtitle: Text(NumberFormat.simpleCurrency().format(lottery.quinielaFirstPrize)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.lottery.quinielaSecondPrize),
            subtitle: Text(NumberFormat.simpleCurrency().format(lottery.quinielaSecondPrize)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.lottery.quinielaThirdPrize),
            subtitle: Text(NumberFormat.simpleCurrency().format(lottery.quinielaThirdPrize)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.lottery.paleFirstSecondPrize),
            subtitle: Text(NumberFormat.simpleCurrency().format(lottery.paleFirstSecondPrize)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.lottery.paleFirstThirdPrize),
            subtitle: Text(NumberFormat.simpleCurrency().format(lottery.paleFirstThirdPrize)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.lottery.paleSecondThirdPrize),
            subtitle: Text(NumberFormat.simpleCurrency().format(lottery.paleSecondThirdPrize)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.lottery.tripletaPrice),
            subtitle: Text(NumberFormat.simpleCurrency().format(lottery.tripletaPrice)),
          ),
        ],
      ),
    );
  }
}
