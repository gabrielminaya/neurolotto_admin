import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

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
  final _currentStand = ValueNotifier<LotteryStandEntity?>(null);

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
                selectedStand: _currentStand.value,
                onStandSelected: (stand) {
                  _currentStand.value = stand;
                  router.push(StandDetailRoute(stand: stand));
                },
              );
            }

            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: _currentStand.watch(
                    (context, standOrNone) => StandItems(
                      stands: state.stands,
                      selectedStand: standOrNone,
                      onStandSelected: (stand) {
                        _currentStand.value = stand;
                      },
                    ),
                  ),
                ),
                const VerticalDivider(width: 0),
                Flexible(
                  flex: 3,
                  child: _currentStand.watch(
                    (context, state) {
                      if (state == null) {
                        return Center(
                          child: Text(t.stand.selectAStand),
                        );
                      }

                      return StandDetail(stand: state);
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
            subtitle: Text(stand.maximumCancellationAmount.toStringAsFixed(0)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.maximumSaleAmount),
            subtitle: Text(stand.maximumSaleAmount.toStringAsFixed(0)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.quinielaMaxAmount),
            subtitle: Text(stand.quinielaMaxAmount?.toStringAsFixed(0) ?? "N/A"),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.paleMaxAmount),
            subtitle: Text(stand.paleMaxAmount?.toStringAsFixed(0) ?? "N/A"),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.tripletaMaxAmount),
            subtitle: Text(stand.tripletaMaxAmount?.toStringAsFixed(0) ?? "N/A"),
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
