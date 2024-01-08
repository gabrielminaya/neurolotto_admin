import 'package:flutter/material.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/group_entity.dart';
import '../../core/router/router.gr.dart';
import '../../core/services.dart';
import '../../i18n/strings.g.dart';
import 'group_form_view.dart';

class GroupListView extends StatelessWidget {
  const GroupListView({
    super.key,
    required this.groups,
    required this.onGroupSelected,
    this.selectedGroup,
  });

  final List<GroupEntity> groups;
  final GroupEntity? selectedGroup;
  final ValueChanged<GroupEntity> onGroupSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.group.title),
        centerTitle: false,
        actions: [
          LayoutBuilder(
            builder: (context, constraints) => TextButton.icon(
              onPressed: () {
                if (constraints.maxWidth <= tabletBreakpoint) {
                  router.push(GroupFormRoute(group: null));
                  return;
                }

                showDialog(
                  context: context,
                  builder: (context) => AdaptativeDialog(
                    child: GroupFormView(group: null),
                  ),
                );
              },
              icon: const Icon(Icons.add),
              label: Text(t.group.add),
            ),
          ),
          hgap(10),
        ],
      ),
      body: Visibility(
        visible: groups.isNotEmpty,
        replacement: Center(
          child: Text(t.group.empty),
        ),
        child: ListView.separated(
          itemCount: groups.length,
          separatorBuilder: (context, index) => const Divider(height: 0),
          itemBuilder: (context, index) {
            final group = groups.elementAt(index);

            return ListTile(
              selected: selectedGroup == group,
              leading: const Icon(Icons.group),
              title: Text(group.name),
              onTap: () => onGroupSelected(group),
              trailing: Visibility(
                visible: selectedGroup == group,
                child: const Icon(Icons.arrow_right),
              ),
            );
          },
        ),
      ),
    );
  }
}
