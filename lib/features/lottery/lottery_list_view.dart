import 'package:flutter/material.dart';
import 'package:neurolotto_admin/core/extensions/number.dart';

import '../../core/entities/lottery_entity.dart';
import '../../i18n/translations.g.dart';

class LotteryListView extends StatelessWidget {
  const LotteryListView({
    super.key,
    required this.lotteries,
    this.selectedLottery,
    required this.onLotterySelected,
  });

  final List<LotteryEntity> lotteries;
  final LotteryEntity? selectedLottery;
  final ValueChanged<LotteryEntity> onLotterySelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.lottery.title),
        centerTitle: false,
      ),
      body: ListView.separated(
        itemCount: lotteries.length,
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final lottery = lotteries.elementAt(index);

          return ListTile(
            leading: Text("${(index + 1).toLotteryFormat}.", style: const TextStyle(fontWeight: FontWeight.bold)),
            selected: selectedLottery == lottery,
            title: Text(lottery.name),
            onTap: () => onLotterySelected(lottery),
            trailing: Visibility(
              visible: selectedLottery == lottery,
              child: const Icon(Icons.arrow_right),
            ),
          );
        },
      ),
    );
  }
}
