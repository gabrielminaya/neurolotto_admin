import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/group_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../core/async_button_builder.dart';
import '../../i18n/strings.g.dart';
import 'group_controller.dart';
import 'group_form_view.dart';

@RoutePage()
class GroupView extends StatefulWidget {
  const GroupView({super.key});

  @override
  State<GroupView> createState() => _GroupViewState();
}

class _GroupViewState extends State<GroupView> {
  final _groupController = getIt.get<GroupController>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _groupController.fetch(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _groupController.watch((context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.failureMessage != null) {
          return Center(child: Text(state.failureMessage ?? ""));
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= tabletBreakpoint) {
              return GroupItems(
                groups: state.groups,
                selectedGroup: state.selectedGroup,
                onGroupSelected: (group) {
                  _groupController.select(group);
                  router.push(GroupDetailRoute(group: group));
                },
              );
            }

            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: GroupItems(
                    groups: state.groups,
                    selectedGroup: state.selectedGroup,
                    onGroupSelected: (group) => _groupController.select(group),
                  ),
                ),
                const VerticalDivider(width: 0),
                Flexible(
                  flex: 3,
                  child: Builder(builder: (_) {
                    if (state.selectedGroup == null) {
                      return Center(
                        child: Text(t.group.selectAGroup),
                      );
                    }

                    return GroupDetail(group: state.selectedGroup!);
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

class GroupItems extends StatelessWidget {
  const GroupItems({
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

@RoutePage(name: "GroupDetailRoute")
class GroupDetail extends StatelessWidget {
  GroupDetail({super.key, required this.group});

  final GroupEntity group;

  final groupController = getIt.get<GroupController>();

  Future<void> onDelete(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.group.deleteTitle),
        content: Text(t.group.deleteContent),
        actions: [
          TextButton(onPressed: () => router.pop(), child: Text(t.common.back)),
          groupController.watch(
            (context, state) => AsyncButtonBuilder(
              idleStateWidget: Text(t.common.save),
              state: state.isActionLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
              buttonWidget: (stateWidget) => TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: MaterialStateColor.resolveWith((states) => context.colorScheme.error)),
                onPressed: () => groupController.delete(
                  group: group,
                  onFailure: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(message),
                        showCloseIcon: true,
                      ),
                    );
                    router.pop();
                  },
                  onSuccess: () {
                    router.pop();
                  },
                ),
                child: stateWidget,
              ),
            ),
          )
        ],
      ),
    );
  }

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
      appBar: AppBar(
        centerTitle: false,
        title: Text(t.group.detail),
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(
              foregroundColor: MaterialStateColor.resolveWith(
                (states) => context.colorScheme.error,
              ),
            ),
            onPressed: () => onDelete(context),
            icon: const Icon(Icons.delete),
            label: Text(t.group.delete),
          ),
          hgap(10),
        ],
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
