import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../core/async_button_builder.dart';
import '../../core/constants.dart';
import '../../core/entities/group_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/strings.g.dart';
import 'group_controller.dart';
import 'group_detail_view.dart';
import 'group_list_view.dart';
import 'group_play_constraint_view.dart';
import 'group_prize_view.dart';

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
              return GroupListView(
                groups: state.groups,
                selectedGroup: state.selectedGroup,
                onGroupSelected: (group) {
                  _groupController.select(group);
                  router.push(GroupTabsRoute(group: group));
                },
              );
            }

            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: GroupListView(
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

                    return GroupTabsView(group: state.selectedGroup!);
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

@RoutePage(name: "GroupTabsRoute")
class GroupTabsView extends StatelessWidget {
  GroupTabsView({super.key, required this.group});

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
                    context.showSnackBar(
                      SnackBar(
                        content: Text(message),
                        showCloseIcon: true,
                      ),
                    );
                    router.pop();
                  },
                  onSuccess: () async {
                    router.pop();
                    await Future.delayed(Duration.zero);
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
    return DefaultTabController(
      length: 3,
      child: LayoutBuilder(
        builder: (context, constraints) => Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                title: Text(group.name),
                centerTitle: false,
                floating: true,
                pinned: true,
                bottom: TabBar(
                  isScrollable: constraints.maxWidth < tabletBreakpoint ? false : true,
                  tabAlignment: constraints.maxWidth < tabletBreakpoint ? TabAlignment.fill : TabAlignment.start,
                  tabs: [
                    Tab(text: t.group.detail),
                    Tab(text: t.group.prizes),
                    Tab(text: t.group.constraints),
                  ],
                ),
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
            ],
            body: TabBarView(
              children: [
                GroupDetailView(group: group),
                GroupPrizeView(group: group),
                GroupPlayConstraintView(group: group),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
