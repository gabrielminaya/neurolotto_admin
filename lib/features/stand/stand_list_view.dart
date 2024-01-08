import 'package:flutter/material.dart';

import '../../core/entities/lottery_stand_entity.dart';
import '../../i18n/strings.g.dart';

class StandListView extends StatelessWidget {
  const StandListView({
    super.key,
    required this.stands,
    required this.onStandSelected,
    this.selectedStand,
  });

  final List<LotteryStandEntity> stands;
  final LotteryStandEntity? selectedStand;
  final ValueChanged<LotteryStandEntity> onStandSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(t.stand.title),
      ),
      body: ListView.separated(
        itemCount: stands.length,
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final stand = stands.elementAt(index);

          return ListTile(
            selected: stand == selectedStand,
            selectedTileColor: Theme.of(context).colorScheme.primaryContainer,
            leading: const Icon(Icons.store),
            title: Text(stand.name),
            onTap: () => onStandSelected(stand),
            trailing: Visibility(
              visible: selectedStand == stand,
              child: const Icon(Icons.arrow_right),
            ),
          );
        },
      ),
    );
  }
}
