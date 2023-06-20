import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff3f51b5), Color(0xff9c27b0)],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        )
      ),
      child: child,
    );
  }
}

