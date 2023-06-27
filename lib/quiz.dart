import 'package:flutter/material.dart';

import 'package:flutter_quiz/screens/question_screen/question_screen.dart';
import 'package:flutter_quiz/screens/start_screen/start_screen.dart';
import 'package:flutter_quiz/screens/result_screen/result_screen.dart';
import 'package:flutter_quiz/shared_widgets/gradient_container.dart';
import 'package:flutter_quiz/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  int activeScreen = 0;

  void _switchScreen() {
    setState(() {
      activeScreen = 1;
    });
  }

  void _chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 2;
      });
    }
  }

  void _restartApp() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> renderCorrectScreen = [
      StartScreen(_switchScreen),
      QuestionScreen(chooseAnswer: _chooseAnswer),
      ResultScreen(
        onPressed: _restartApp,
        chosenAnswers: [...selectedAnswers],
      ),
    ];

    return MaterialApp(
      title: 'Flutter Quiz',
      home: Scaffold(
        body: GradientContainer(
          child: renderCorrectScreen[activeScreen],
        ),
      ),
    );
  }
}
