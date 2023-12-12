import 'package:flutter/material.dart';

enum AsyncButtonBuilderState { idle, loading }

class AsyncButtonBuilder extends StatelessWidget {
  const AsyncButtonBuilder({
    super.key,
    this.loadingStateWidget,
    required this.idleStateWidget,
    required this.state,
    required this.buttonWidget,
  });

  final Widget? loadingStateWidget;
  final Widget idleStateWidget;
  final Widget Function(Widget stateWidget) buttonWidget;
  final AsyncButtonBuilderState state;

  @override
  Widget build(BuildContext context) {
    if (state == AsyncButtonBuilderState.loading) {
      return buttonWidget(
        loadingStateWidget ??
            const SizedBox(
              height: 10,
              width: 10,
              child: CircularProgressIndicator(
                strokeWidth: 3.0,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
      );
    }

    return buttonWidget(idleStateWidget);
  }
}
