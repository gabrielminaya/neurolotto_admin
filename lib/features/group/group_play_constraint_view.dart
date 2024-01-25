import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';

import '../../core/adaptative_dialog.dart';
import '../../core/constants.dart';
import '../../core/entities/group_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/number.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'group_play_constraint_controller.dart';
import 'group_play_constraint_form_view.dart';

class GroupPlayConstraintView extends StatefulWidget {
  const GroupPlayConstraintView({super.key, required this.group});

  final GroupEntity group;

  @override
  State<GroupPlayConstraintView> createState() => _GroupPlayConstraintViewState();
}

class _GroupPlayConstraintViewState extends State<GroupPlayConstraintView> {
  final _goupPlayConstraintController = getIt.get<GroupPlayConstraintController>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _goupPlayConstraintController.fetch(widget.group),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (constraints.maxWidth <= tabletBreakpoint) {
              router.push(GroupPlayConstraintFormRoute(group: widget.group));
              return;
            }

            showDialog(
              context: context,
              builder: (context) => AdaptativeDialog(
                child: GroupPlayConstraintFormView(group: widget.group),
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
        body: _goupPlayConstraintController.watch(
          (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.failureMessage != null) {
              return Center(child: Text(state.failureMessage ?? ""));
            }

            if (state.constraints.isEmpty) {
              return Center(
                child: Text(t.monitoring.playEmpty),
              );
            }

            return AlignedGridView.count(
              shrinkWrap: true,
              padding: p12,
              crossAxisCount: constraints.maxWidth < 700 ? 4 : 8,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: state.constraints.length,
              itemBuilder: (context, index) {
                final constraint = state.constraints.elementAt(index);

                return Chip(
                  label: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(constraint.playNumber.toLotteryFormat),
                        Text(
                          NumberFormat.currency(symbol: "").format(constraint.constraintAmount),
                          style: context.textTheme.labelSmall?.copyWith(color: context.colorScheme.primary),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
