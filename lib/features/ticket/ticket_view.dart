import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../../core/async_button_builder.dart';
import '../../core/constants.dart';
import '../../core/entities/lottery_stand_entity.dart';
import '../../core/entities/ticket_entity.dart';
import '../../core/extensions/context.dart';
import '../../core/extensions/number.dart';
import '../../core/extensions/value_notifier.dart';
import '../../core/router/router.gr.dart';
import '../../core/service_locator/get_it.dart';
import '../../core/services.dart';
import '../../i18n/translations.g.dart';
import 'ticket_controller.dart';
import 'ticket_detail_controller.dart';

@RoutePage()
class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  final _ticketController = getIt.get<TicketController>();
  final _ticketDetailController = getIt.get<TicketDetailController>();

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _ticketController
        ..initialize()
        ..fetch(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _ticketController.watch((context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.failureMessage != null) {
          return Center(child: Text(state.failureMessage ?? ""));
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth <= tabletBreakpoint) {
              return TicketItems(
                tickets: state.tickets,
                selectedTicket: state.selectedTicket,
                onTicketSelected: (ticket) {
                  _ticketController.select(ticket);
                  router.push(TicketDetailRoute(ticket: ticket));
                },
              );
            }

            return Row(
              children: [
                Flexible(
                  flex: 1,
                  child: TicketItems(
                    tickets: state.tickets,
                    selectedTicket: state.selectedTicket,
                    onTicketSelected: (ticket) {
                      _ticketController.select(ticket);
                      _ticketDetailController.fetch(ticket: ticket);
                    },
                  ),
                ),
                const VerticalDivider(width: 0),
                Flexible(
                  flex: 3,
                  child: Builder(
                    builder: (_) {
                      if (state.selectedTicket == null) {
                        return Center(
                          child: Text(t.ticket.selectATicket),
                        );
                      }

                      return TicketDetail(ticket: state.selectedTicket!);
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

class TicketItems extends StatelessWidget {
  TicketItems({
    super.key,
    required this.tickets,
    this.selectedTicket,
    required this.onTicketSelected,
  });

  final List<TicketEntity> tickets;
  final TicketEntity? selectedTicket;
  final ValueChanged<TicketEntity> onTicketSelected;
  final _ticketController = getIt.get<TicketController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: p12,
            sliver: SliverList.list(
              children: [
                _ticketController.watch(
                  (context, state) => FormBuilderDateTimePicker(
                    name: 'date',
                    decoration: InputDecoration(labelText: t.ticket.date, prefixIcon: const Icon(Icons.date_range)),
                    firstDate: DateTime(2023),
                    lastDate: DateTime.now(),
                    format: DateFormat("dd/MM/yyyy"),
                    initialValue: state.selectedDate,
                    inputType: InputType.date,
                    onChanged: (value) => _ticketController.fetch(atDate: value),
                  ),
                ),
                vgap(10),
                _ticketController.watch((context, state) {
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
                    onChanged: (value) => _ticketController.fetch(stand: value),
                    decoration: InputDecoration(
                      labelText: t.ticket.stands,
                      prefixIcon: const Icon(Icons.list),
                      border: const OutlineInputBorder(),
                    ),
                  );
                }),
              ],
            ),
          ),
          SliverList.separated(
            itemCount: tickets.length,
            separatorBuilder: (context, index) => const Divider(height: 0),
            itemBuilder: (context, index) {
              final ticket = tickets.elementAt(index);
              return ListTile(
                leading: const Icon(Icons.receipt_outlined),
                title: Text(ticket.sequenceNumber.toString().padLeft(10, '0')),
                subtitle: Text(ticket.lotteryStand.name),
                selected: ticket == selectedTicket,
                onTap: () => onTicketSelected(ticket),
                trailing: Visibility(
                  visible: ticket == selectedTicket,
                  child: const Icon(Icons.arrow_right),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

@RoutePage(name: "TicketDetailRoute")
class TicketDetail extends StatefulWidget {
  const TicketDetail({super.key, required this.ticket});

  final TicketEntity ticket;

  @override
  State<TicketDetail> createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail> {
  final _ticketController = getIt.get<TicketController>();
  final _ticketDetailController = getIt.get<TicketDetailController>();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => _ticketDetailController.fetch(ticket: widget.ticket),
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
                      ticket: widget.ticket,
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
    return Scaffold(
      appBar: AppBar(
        title: Text(t.ticket.detail),
        centerTitle: false,
        actions: [
          Visibility(
            visible: widget.ticket.canceledByName == null,
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: context.colorScheme.error,
              ),
              onPressed: () => onCancel(context),
              label: Text(t.ticket.cancelAction),
              icon: const Icon(Icons.close),
            ),
          ),
          hgap(10),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.date_range),
            title: Text(t.ticket.date),
            subtitle: Text(DateFormat("dd/MM/yyyy HH:mm a").format(widget.ticket.createdAt)),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.store),
            title: Text(t.ticket.stand),
            subtitle: Text(widget.ticket.lotteryStand.name),
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.power_settings_new),
            title: Text(t.ticket.status),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.ticket.ticketState.name),
                if (widget.ticket.canceledByName != null)
                  Text(
                    widget.ticket.canceledByName ?? "",
                    style: context.textTheme.labelSmall?.copyWith(color: context.colorScheme.error),
                  ),
              ],
            ),
          ),
          _ticketDetailController.watch(
            (context, state) => state.when(
              initial: () => const SizedBox(),
              loading: () => const LinearProgressIndicator(),
              failure: (message) => Text(message),
              success: (plays) {
                final totalAmount = plays.fold(
                  0.0,
                  (previousValue, element) => previousValue + (element.playAmount * element.lotteryIds.length),
                );

                return Table(
                  border: TableBorder.all(),
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(2),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                  },
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color: context.colorScheme.primaryContainer,
                      ),
                      children: [
                        TableCell(
                          child: Padding(
                            padding: p8,
                            child: Text(
                              t.ticket.play,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: p8,
                            child: Text(
                              t.ticket.lottery,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: p8,
                            child: Text(
                              t.ticket.playAmount,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: p8,
                            child: Text(
                              t.ticket.subtotalAmount,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    for (final play in plays)
                      TableRow(
                        children: [
                          TableCell(
                            child: Padding(
                              padding: p4,
                              child: Text(play.playNumber.toLotteryFormat),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: p4,
                              child: Text(play.lotteryNames.join(", ")),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: p4,
                              child: Text(NumberFormat.simpleCurrency().format(play.playAmount)),
                            ),
                          ),
                          TableCell(
                            child: Padding(
                              padding: p4,
                              child:
                                  Text(NumberFormat.simpleCurrency().format(play.playAmount * play.lotteryIds.length)),
                            ),
                          ),
                        ],
                      ),
                    TableRow(
                      children: [
                        const TableCell(
                          child: Padding(padding: p2),
                        ),
                        const TableCell(
                          child: Padding(padding: p2),
                        ),
                        TableCell(
                          child: Padding(
                            padding: EdgeInsets.only(top: p2.bottom, bottom: p2.top, right: 10),
                            child: Text(
                              t.ticket.total,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: p2,
                            child: Text(
                              NumberFormat.simpleCurrency().format(totalAmount),
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
