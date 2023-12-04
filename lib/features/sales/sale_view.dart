import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:neurolotto_admin/core/constants.dart';
import 'package:neurolotto_admin/core/extensions/value_notifier.dart';
import 'package:neurolotto_admin/core/service_locator/get_it.dart';
import 'package:neurolotto_admin/features/sales/sale_controller.dart';

@RoutePage()
class SaleView extends StatelessWidget {
  SaleView({super.key});

  final _saleController = getIt.get<SaleController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: p12,
            sliver: SliverToBoxAdapter(
              child: _saleController.watch(
                (context, state) => DropdownButtonFormField<int>(
                  value: state.searchOption,
                  decoration: const InputDecoration(labelText: "Tipo de Busqueda"),
                  items: const [
                    DropdownMenuItem(value: 1, child: Text("Todas las bancas")),
                    DropdownMenuItem(value: 2, child: Text("Por Grupo")),
                    DropdownMenuItem(value: 3, child: Text("Por Banca")),
                  ],
                  onChanged: (searchOption) {
                    if (searchOption == 1) {
                      _saleController
                        ..setOption(searchOption ?? 1)
                        ..fetch();
                      return;
                    }

                    return _saleController.setOption(searchOption ?? 1);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
