import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../core/constants.dart';
import '../../core/entities/group_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../core/themes/async_button_builder.dart';
import '../../i18n/strings.g.dart';
import 'group_controller.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () => router.navigate(GroupFormRoute()),
        child: const Icon(Icons.add),
      ),
      body: _groupController.watch((context, state) {
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
                children: state.groups.map((e) {
                  return SizedBox(
                    width: constraints.maxWidth < 700 ? 400 : 500,
                    child: _GroupCard(group: e),
                  );
                }).toList(),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _GroupCard extends StatelessWidget {
  _GroupCard({required this.group});

  final GroupEntity group;
  final _groupController = getIt.get<GroupController>();

  Future<void> onDelete(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.group.deleteTitle),
        content: Text(t.group.deleteContent),
        actions: [
          TextButton(onPressed: () => router.pop(), child: Text(t.common.back)),
          _groupController.watch(
            (context, state) => AsyncButtonBuilder(
              idleStateWidget: Text(t.common.save),
              state: state.isActionLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
              buttonWidget: (stateWidget) => TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: MaterialStateColor.resolveWith((states) => context.colorScheme.error)),
                onPressed: () => _groupController.delete(
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
                  onSuccess: () => router.pop(),
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
    return Card(
      elevation: 0.3,
      shape: const OutlineInputBorder(),
      child: ListTile(
        onLongPress: () => onDelete(context),
        onTap: () => router.navigate(GroupFormRoute(group: group)),
        isThreeLine: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(group.name),
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
                Text(t.group.quinielaMaxAmount),
                Text(group.quinielaMaxAmount.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.group.paleMaxAmount),
                Text(group.paleMaxAmount.toStringAsFixed(0)),
              ],
            ),
            vgap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t.group.tripletaMaxAmount),
                Text(group.tripletaMaxAmount.toStringAsFixed(0)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
