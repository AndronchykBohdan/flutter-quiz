import 'package:flutter/material.dart';

import 'package:flutter_quiz/screens/start_screen/start_screen_content.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback switchScreen;

  const StartScreen(this.switchScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StartScreenContent(switchScreen),
    );
  }
}
