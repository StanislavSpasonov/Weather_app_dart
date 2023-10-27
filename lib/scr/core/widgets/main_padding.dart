import 'package:flutter/material.dart';

class MainPadding extends StatelessWidget {
  const MainPadding({super.key, required this.child});

  static const verticalPadding = 24.0;
  static const horizontalPadding = 16.0;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: verticalPadding,
        vertical: horizontalPadding,
      ),
      child: child,
    );
  }
}
