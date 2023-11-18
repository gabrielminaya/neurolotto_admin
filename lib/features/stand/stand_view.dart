import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../../core/router/router.gr.dart';
import '../../core/services.dart';

import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../i18n/strings.g.dart';
import 'stand_controller.dart';

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
      body: _standController.watch(
        (context, state) => state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          failure: (message) => Center(child: Text(message)),
          success: (stands) => SingleChildScrollView(
            child: LayoutBuilder(
              builder: (context, constraints) => Padding(
                padding: p8,
                child: Wrap(
                  children: stands.map((e) => SizedBox(width: 400, child: _StandCard(stand: e))).toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _StandCard extends StatelessWidget {
  const _StandCard({required this.stand});

  final LotteryStandEntity stand;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      shape: const OutlineInputBorder(),
      child: ListTile(
        onTap: () => router.navigate(StandFormRoute(stand: stand)),
        isThreeLine: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(stand.name),
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
                Text(t.stand.name),
                Text(stand.group.name),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.stand.contraint),
                Text(stand.constraintLevel.name),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.stand.username),
                Text(stand.username),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.stand.maximumSaleAmount),
                Text(stand.maximumSaleAmount.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.stand.maximumCancellationAmount),
                Text(stand.maximumCancellationAmount.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.stand.quinielaMaxAmount),
                Text(stand.quinielaMaxAmount?.toStringAsFixed(0) ?? "N/A"),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.stand.paleMaxAmount),
                Text(stand.paleMaxAmount?.toStringAsFixed(0) ?? "N/A"),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.stand.tripletaMaxAmount),
                Text(stand.tripletaMaxAmount?.toStringAsFixed(0) ?? "N/A"),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.stand.active),
                Text(stand.active.toString().toUpperCase()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
