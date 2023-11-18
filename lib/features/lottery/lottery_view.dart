import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:neurolotto_admin/core/router/router.gr.dart';
import 'package:neurolotto_admin/core/services.dart';

import '../../core/constants.dart';
import '../../core/entities/lottery_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/strings.g.dart';
import 'lottery_controller.dart';

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

        return SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) => Padding(
              padding: p8,
              child: Wrap(
                children: state.lotteries.map((e) => SizedBox(width: 400, child: _LotteryCard(lottery: e))).toList(),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _LotteryCard extends StatelessWidget {
  const _LotteryCard({required this.lottery});

  final LotteryEntity lottery;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      shape: const OutlineInputBorder(),
      child: ListTile(
        onTap: () => router.navigate(LotteryFormRoute(lottery: lottery)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(lottery.name),
            const Icon(Icons.edit),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.timeOpen),
                Text(lottery.timeOpen),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.timeClose),
                Text(lottery.timeClose),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.quinielaFirstPrize),
                Text(lottery.quinielaFirstPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.quinielaSecondPrize),
                Text(lottery.quinielaSecondPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.quinielaThirdPrize),
                Text(lottery.quinielaThirdPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.paleFirstSecondPrize),
                Text(lottery.paleFirstSecondPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.paleFirstThirdPrize),
                Text(lottery.paleFirstThirdPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.paleSecondThirdPrize),
                Text(lottery.paleSecondThirdPrize.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.tripletaPrice),
                Text(lottery.tripletaPrice.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.lottery.active),
                Text(lottery.status.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
