import 'package:flutter/material.dart';
import 'package:quizwiz/models/quiz_types/programming/programming_quiz_types.dart';

import '../../../pages/quiz_page.dart';
import '../../quiz/quiz.dart';

class QuizTypeProgrammingTile extends StatelessWidget {
  final String quizType;
  final int index;
  final List<String> mostPopularQuizzes;
  QuizTypeProgrammingTile(
      {super.key,
      required this.quizType,
      required this.index,
      required this.mostPopularQuizzes});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizPage(quiz: findPopularQuiz()),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz_types/programming/${mostPopularQuizzes[index]}.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 8),
            Text(
              // category name
              categories[index],
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  final List<String> categories = [
    'Android',
    '.Net',
    'Kotlin',
    'Flutter',
    'Java',
    'Csharp',
    'C',
    'Web',
    'Security',
  ];

  Quiz findPopularQuiz() {
    switch (categories[index]) {
      case 'Android':
        return ProgrammingQuizzes.androidBasicsQuiz;
      case '.Net':
        return ProgrammingQuizzes.dotNetBasicsQuiz;
      case 'Kotlin':
        return ProgrammingQuizzes.kotlinLangBasicsQuiz;
      case 'Flutter':
        return ProgrammingQuizzes.flutterLangBasicsQuiz;
      case 'Java':
        return ProgrammingQuizzes.javaBasicsQuiz;
      case 'Csharp':
        return ProgrammingQuizzes.cSharpBasicsQuiz;
      case 'C':
        return ProgrammingQuizzes.cProgrammingQuiz;
      case 'Cpp':
        return ProgrammingQuizzes.cyberSecurityBasicsQuiz;
      default:
        return ProgrammingQuizzes.webProgrammingBasicsQuiz;
    }
  }
}
