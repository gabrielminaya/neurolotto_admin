import 'package:flutter/material.dart';

import '../../core/services.dart';

class HomeNavigationDrawer extends StatelessWidget {
  const HomeNavigationDrawer({
    super.key,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: selectedIndex,
      onDestinationSelected: onDestinationSelected,
      children: [
        ListTile(
          isThreeLine: true,
          title: Text(authController.consortium?.name ?? ""),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(authController.user?.id ?? "", style: const TextStyle(fontSize: 10)),
              Text(authController.user?.email ?? "", style: const TextStyle(fontSize: 10)),
            ],
          ),
        ),
        const Divider(),
        const NavigationDrawerDestination(
          icon: Icon(Icons.dashboard),
          label: Text("Monitoring"),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.receipt),
          label: Text("Tickets"),
        ),
        const Divider(),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text("Manage consortium"),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text("Manage lotteries"),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text("Manage groups"),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text("Manage stands"),
        ),
      ],
    );
  }
}
