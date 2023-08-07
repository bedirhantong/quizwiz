import '../questions/question.dart';

class Quiz {
  String? id;
  String quizName = "";
  String numberOfQuestion = "";
  String imageString = "";
  List<Question> questions = [];
  // String token = "";

  Quiz({
    this.id,
    required this.quizName,
    required this.numberOfQuestion,
    required this.imageString,
  });
}
