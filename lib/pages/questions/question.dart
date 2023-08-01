class Question {
  String questionText = "";
  bool questionAnswer = false;

  Question({required String q, required bool a}) {
    questionAnswer = a;
    questionText = q;
  }
}
