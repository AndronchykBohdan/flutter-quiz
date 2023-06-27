class QuizQuestion {
  const QuizQuestion(this.questionText, this.questionAnswers);

  final String questionText;
  final List<String> questionAnswers;

  List<String> getShuffledAnswers() {
    final newList = List.of(questionAnswers);
    newList.shuffle();
    return newList;
  }
}
