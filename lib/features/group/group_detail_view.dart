import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/group_entity.dart';
import '../../core/router/router.gr.dart';
import '../../core/services.dart';
import '../../i18n/strings.g.dart';
import 'group_form_view.dart';

class GroupDetailView extends StatelessWidget {
  const GroupDetailView({super.key, required this.group});

  final GroupEntity group;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: LayoutBuilder(
        builder: (_, constraints) => FloatingActionButton(
          onPressed: () {
            if (constraints.maxWidth <= tabletBreakpoint) {
              router.push(GroupFormRoute(group: group));
              return;
            }

            showDialog(
              context: context,
              builder: (context) => AdaptativeDialog(
                child: GroupFormView(group: group),
              ),
            );
          },
          child: const Icon(Icons.edit),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.group),
            title: Text(t.group.name),
            subtitle: Text(group.name),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.stand.quinielaMaxAmount),
            subtitle: Text(NumberFormat.simpleCurrency().format(group.quinielaMaxAmount)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.stand.paleMaxAmount),
            subtitle: Text(NumberFormat.simpleCurrency().format(group.paleMaxAmount)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: Text(t.stand.tripletaMaxAmount),
            subtitle: Text(NumberFormat.simpleCurrency().format(group.tripletaMaxAmount)),
          ),
        ],
      ),
    );
  }
}
