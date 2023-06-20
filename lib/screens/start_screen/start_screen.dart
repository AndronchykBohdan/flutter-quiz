import 'package:flutter/material.dart';

import 'package:flutter_quiz/shared_widgets/gradient_container.dart';
import 'package:flutter_quiz/screens/start_screen/start_screen_content.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const GradientContainer(
      child: Center(
        child: StartScreenContent(),
      ),
    );
  }
}
