class Question {
  const Question(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffledanswers() {
    final shuffled = List.of(answers);
    shuffled.shuffle();
    return shuffled;
  }
}
