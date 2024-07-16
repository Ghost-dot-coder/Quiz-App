class Questions {
  Questions(this.question, this.answer);
  final String question;
  final List<String> answer;
  List<String> shuffledAnswers() {
    var shuffled = List.of(answer);
    shuffled.shuffle();
    return shuffled;
  }
}
