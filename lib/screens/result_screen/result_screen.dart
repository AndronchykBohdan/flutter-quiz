import 'package:flutter/material.dart';

import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/models/summer_data.dart';
import 'package:flutter_quiz/screens/result_screen/questions_summary.dart';
import 'package:flutter_quiz/shared_widgets/custom_outline_button.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.onPressed,
  });

  final List<String> chosenAnswers;

  final VoidCallback onPressed;

  List<SummeryData> getSummeryData() {
    return List.generate(chosenAnswers.length, (index) {
      return SummeryData(
        questionIndex: index,
        question: questions[index].questionText,
        correctAnswer: questions[index].questionAnswers[0],
        userAnswer: chosenAnswers[index],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummeryData();
    final String allQuestions = questions.length.toString();
    final String correctAnswers = summaryData
        .where((element) => element.correctAnswer == element.userAnswer)
        .length
        .toString();

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctAnswers out of $allQuestions questions correctly',
              textAlign: TextAlign.center,
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
            CustomOutlineButton(
              label: 'Rest Quiz',
              icon: Icons.refresh,
              onPressed: onPressed,
            )
          ],
        ),
      ),
    );
  }
}
