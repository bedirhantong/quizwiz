import '../questions/question.dart';

class Quiz {
  String? id;
  String quizName = "";
  int numberOfQuestion = 10;
  String imageString = "";
  List<Question> questions = [];
  // String token = "";

  Quiz({
    this.id,
    required this.quizName,
    required this.numberOfQuestion,
    required this.imageString,
    required this.questions,
  });
}
