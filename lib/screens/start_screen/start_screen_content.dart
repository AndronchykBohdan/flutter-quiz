import 'package:flutter/material.dart';

import 'package:flutter_quiz/shared_widgets/custom_outline_button.dart';

class StartScreenContent extends StatelessWidget {
  const StartScreenContent({super.key});

  void _startButtonPress() {
    print('start');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          'Flutter Quiz',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        CustomOutlineButton(
          label: 'Start Quiz',
          onPressed: _startButtonPress,
        )
      ],
    );
  }
}
