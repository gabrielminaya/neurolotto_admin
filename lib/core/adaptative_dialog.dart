import 'package:flutter/material.dart';

const _dialogSize = Size(450.0, 700.0);

class AdaptativeDialog extends StatelessWidget {
  const AdaptativeDialog({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < _dialogSize.width || constraints.maxHeight < _dialogSize.height) {
          return child;
        }

        return Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            clipBehavior: Clip.hardEdge,
            child: SizedBox.fromSize(
              size: _dialogSize,
              child: AspectRatio(
                aspectRatio: 1,
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}
