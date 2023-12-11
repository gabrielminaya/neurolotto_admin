import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/strings.g.dart';
import 'stand_controller.dart';
import 'stand_form_view.dart';

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
              return StandItems(
                stands: state.stands,
                selectedStand: state.currentStand,
                onStandSelected: (stand) {
                  _standController.setStand(stand);
                  router.push(StandDetailRoute(stand: stand));
                },
              );
            }

            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: StandItems(
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

                    return StandDetail(stand: state.currentStand!);
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

class StandItems extends StatelessWidget {
  const StandItems({
    super.key,
    required this.stands,
    required this.onStandSelected,
    this.selectedStand,
  });

  final List<LotteryStandEntity> stands;
  final LotteryStandEntity? selectedStand;
  final ValueChanged<LotteryStandEntity> onStandSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(t.stand.title),
      ),
      body: ListView.separated(
        itemCount: stands.length,
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final stand = stands.elementAt(index);

          return ListTile(
            selected: stand == selectedStand,
            selectedTileColor: Theme.of(context).colorScheme.primaryContainer,
            leading: const Icon(Icons.store),
            title: Text(stand.name),
            onTap: () => onStandSelected(stand),
            trailing: Visibility(
              visible: selectedStand == stand,
              child: const Icon(Icons.arrow_right),
            ),
          );
        },
      ),
    );
  }
}

@RoutePage(name: "StandDetailRoute")
class StandDetail extends StatelessWidget {
  const StandDetail({super.key, required this.stand});

  final LotteryStandEntity stand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(t.stand.detail),
      ),
      floatingActionButton: LayoutBuilder(
        builder: (_, constraints) => FloatingActionButton(
          onPressed: () {
            if (constraints.maxWidth <= tabletBreakpoint) {
              router.push(StandFormRoute(stand: stand));
              return;
            }

            showDialog(
              context: context,
              builder: (context) => AdaptativeDialog(
                child: StandFormView(stand: stand),
              ),
            );
          },
          child: const Icon(Icons.edit),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.store),
            title: Text(t.stand.name),
            subtitle: Text(stand.name),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.group),
            title: Text(t.stand.group),
            subtitle: Text(stand.group.name),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text(t.stand.username),
            subtitle: Text(stand.username),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.contrast),
            title: Text(t.stand.contraint),
            subtitle: Text(stand.constraintLevel.name),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.maximumCancellationAmount),
            subtitle: Text(NumberFormat.simpleCurrency().format(stand.maximumCancellationAmount)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.maximumSaleAmount),
            subtitle: Text(NumberFormat.simpleCurrency().format(stand.maximumSaleAmount)),
          ),
          const Divider(height: 0),
          ListTile(
            enabled: stand.quinielaMaxAmount != null,
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.quinielaMaxAmount),
            subtitle: Text(NumberFormat.simpleCurrency().format(stand.quinielaMaxAmount ?? 0)),
          ),
          const Divider(height: 0),
          ListTile(
            enabled: stand.paleMaxAmount != null,
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.paleMaxAmount),
            subtitle: Text(NumberFormat.simpleCurrency().format(stand.paleMaxAmount ?? 0)),
          ),
          const Divider(height: 0),
          ListTile(
            enabled: stand.tripletaMaxAmount != null,
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.tripletaMaxAmount),
            subtitle: Text(NumberFormat.simpleCurrency().format(stand.tripletaMaxAmount ?? 0)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: Text(t.stand.active),
            subtitle: Text(stand.active.toString().toUpperCase()),
          ),
        ],
      ),
    );
  }
}
