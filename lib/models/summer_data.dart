class SummeryData {
  const SummeryData({
    required this.questionIndex,
    required this.question,
    required this.correctAnswer,
    required this.userAnswer,
  });

  final int questionIndex;
  final String question;
  final String correctAnswer;
  final String userAnswer;

  int get humanizedIndex {
    return questionIndex + 1;
  }

  bool get isCorrect {
    return correctAnswer == userAnswer;
  }
}