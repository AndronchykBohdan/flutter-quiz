import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_quiz/shared_widgets/custom_outline_button.dart';

class StartScreenContent extends StatelessWidget {
  final VoidCallback onPressed;

  const StartScreenContent(this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Flutter Quiz',
          style: GoogleFonts.raleway(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        CustomOutlineButton(
          label: 'Start Quiz',
          icon: Icons.arrow_right_alt_outlined,
          onPressed: onPressed,
        )
      ],
    );
  }
}
