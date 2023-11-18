import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:neurolotto_admin/core/services.dart';

import '../../core/service_locator/get_it.dart';
import 'ticket_controller.dart';

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
      (_) => _controller.fetch(),
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(authController.user?.id);
    return const Scaffold();
  }
}
