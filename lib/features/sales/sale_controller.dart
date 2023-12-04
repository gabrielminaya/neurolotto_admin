import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sale_controller.freezed.dart';

@Freezed()
sealed class SaleControllerState with _$SaleControllerState {
  const factory SaleControllerState({
    @Default(false) bool isLoading,
    @Default(1) int searchOption,
  }) = _SaleControllerState;
}

@LazySingleton()
class SaleController extends ValueNotifier<SaleControllerState> {
  SaleController() : super(const SaleControllerState());

  void setOption(int searchOption) {
    value = value.copyWith(searchOption: searchOption);
  }

  Future<void> fetch() async {}
}
