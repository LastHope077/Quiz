class Quizmodel {
  String questions;
  List<String> answers;

  Quizmodel(this.questions, this.answers);

  List<String> getShuffledAnswers() {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
