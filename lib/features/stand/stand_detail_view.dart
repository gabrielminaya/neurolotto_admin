import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/router/router.gr.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'stand_form_view.dart';

class StandDetailView extends StatelessWidget {
  const StandDetailView({super.key, required this.stand});

  final LotteryStandEntity stand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: LayoutBuilder(
        builder: (_, constraints) => FloatingActionButton(
          heroTag: "stand-detail",
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
            enabled: stand.tripletaMaxAmount != null,
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.tripletaMaxAmount),
            subtitle: Text(NumberFormat.simpleCurrency().format(stand.tripletaMaxAmount ?? 0)),
          ),
          const Divider(height: 0),
          ListTile(
            enabled: stand.commissionRate != null,
            leading: const Icon(Icons.attach_money),
            title: Text(t.stand.commissionRate),
            subtitle: Text(NumberFormat.compact().format(stand.commissionRate ?? 0)),
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
