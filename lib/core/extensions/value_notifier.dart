import 'package:flutter/material.dart';

extension ValueNotifierX<S> on ValueNotifier<S> {
  Widget watch(Widget Function(BuildContext context, S state) builder) {
    return ValueListenableBuilder(
      valueListenable: this,
      builder: (context, value, _) => builder(context, value),
    );
  }
}
