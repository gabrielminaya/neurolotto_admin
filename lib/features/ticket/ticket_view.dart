import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/entities/ticket_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/number.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/themes/async_button_builder.dart';
import '../../i18n/strings.g.dart';
import 'ticket_controller.dart';
import 'ticket_detail_controller.dart';

@RoutePage()
class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  final _controller = getIt.get<TicketController>();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        _controller.initialize();
        _controller.fetch();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) => CustomScrollView(
          slivers: [
            SliverPadding(
              padding: p12,
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Flexible(
                      child: FormBuilderDateTimePicker(
                        name: 'date',
                        firstDate: DateTime(2023),
                        lastDate: DateTime.now(),
                        keyboardType: TextInputType.datetime,
                        inputType: InputType.date,
                        format: DateFormat("yyyy-MM-dd"),
                        onChanged: (value) => _controller.fetch(date: value),
                        decoration: InputDecoration(
                          labelText: t.ticket.date,
                          prefixIcon: const Icon(Icons.calendar_today),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    hgap(10),
                    Flexible(
                      child: _controller.watch((context, state) {
                        if (state.isInitializedLoading) {
                          return const Center(child: LinearProgressIndicator());
                        }

                        return FormBuilderDropdown<LotteryStandEntity>(
                          name: 'status',
                          items: [
                            DropdownMenuItem(
                              value: null,
                              child: Text(t.ticket.all),
                            ),
                            ...state.lotteryStands.map((e) {
                              return DropdownMenuItem(
                                value: e,
                                child: Text(e.name),
                              );
                            })
                          ],
                          onChanged: (value) => _controller.fetch(stand: value),
                          decoration: InputDecoration(
                            labelText: t.ticket.stands,
                            prefixIcon: const Icon(Icons.list),
                            border: const OutlineInputBorder(),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            ),
            _controller.watch((context, state) {
              if (state.isLoading) {
                return const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                );
              }

              if (state.failureMessage != null) {
                return SliverFillRemaining(
                  child: Center(child: Text(state.failureMessage ?? "")),
                );
              }

              if (state.tickets.isEmpty) {
                return SliverFillRemaining(
                  child: Center(child: Text(t.ticket.empty)),
                );
              }

              return SliverPadding(
                padding: p12,
                sliver: SliverToBoxAdapter(
                  child: Wrap(
                    children: state.tickets.map((ticket) {
                      return SizedBox(
                        width: constraints.maxWidth < 700 ? 400 : 500,
                        child: _TicketCard(ticket: ticket),
                      );
                    }).toList(),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _TicketCard extends StatelessWidget {
  _TicketCard({required this.ticket});

  final TicketEntity ticket;
  final _ticketDetailController = getIt.get<TicketDetailController>();
  final _ticketController = getIt.get<TicketController>();

  Future<void> showTicketDetailDialog(BuildContext context) async {
    _ticketDetailController.fetch(ticket: ticket);

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(ticket.sequenceNumber.toString().padLeft(10, '0')),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(DateFormat("dd/MM/yyyy HH:mm a").format(ticket.createdAt)),
            vgap(5),
            Text(ticket.lotteryStand.name),
            vgap(5),
            Text(ticket.ticketState.name),
            vgap(10),
            _ticketDetailController.watch(
              (context, state) => state.when(
                initial: () => const SizedBox(),
                loading: () => const LinearProgressIndicator(),
                failure: (message) => Text(message),
                sucess: (plays) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...plays.map(
                        (play) {
                          return ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(play.playNumber.toLotteryFormat),
                            trailing: Text(NumberFormat.currency(symbol: "").format(play.playAmount)),
                            subtitle: Text(play.lotteryNames.join(', ')),
                          );
                        },
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          t.ticket.total,
                          style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          NumberFormat.currency(symbol: "").format(
                            plays.fold(
                              0.0,
                              (previousValue, element) =>
                                  previousValue + (element.playAmount * element.lotteryIds.length),
                            ),
                          ),
                          style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () => context.router.pop(),
                    child: Text(t.common.back),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<void> onCancel(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.ticket.cancelActionTitle),
        content: Text(t.ticket.cancelActionContent),
        actions: [
          TextButton(
            onPressed: () => context.router.pop(),
            child: Text(t.common.back),
          ),
          _ticketController.watch(
            (context, state) => AsyncButtonBuilder(
              idleStateWidget: Text(t.ticket.cancelAction),
              state: state.isActionLoading ? AsyncButtonBuilderState.loading : AsyncButtonBuilderState.idle,
              buttonWidget: (stateWidget) => TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateColor.resolveWith((states) => context.colorScheme.error),
                ),
                child: stateWidget,
                onPressed: () => _ticketController
                    .cancel(
                      ticket: ticket,
                      onFailure: (message) => context.showSnackBar(
                        SnackBar(content: Text(message), showCloseIcon: true),
                      ),
                      onSuccess: () => context.showSnackBar(
                        SnackBar(content: Text(t.ticket.cancelSuccess), showCloseIcon: true),
                      ),
                    )
                    .then((_) => context.router.pop()),
              ),
            ),
          ),
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
        isThreeLine: true,
        title: Text(ticket.sequenceNumber.toString().padLeft(10, '0')),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            Text(DateFormat("dd/MM/yyyy HH:mm a").format(ticket.createdAt)),
            vgap(5),
            Text(ticket.lotteryStand.name),
            vgap(5),
            Text(ticket.ticketState.name),
            vgap(10),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => onCancel(context),
                  style: TextButton.styleFrom(
                    foregroundColor: MaterialStateColor.resolveWith(
                      (states) => context.colorScheme.error,
                    ),
                  ),
                  child: Text(t.ticket.cancelAction),
                ),
                TextButton(
                  onPressed: () => showTicketDetailDialog(context),
                  style: TextButton.styleFrom(
                    foregroundColor: MaterialStateColor.resolveWith(
                      (states) => context.colorScheme.secondary,
                    ),
                  ),
                  child: Text(t.ticket.showDetails),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
