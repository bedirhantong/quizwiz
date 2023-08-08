import 'package:flutter/material.dart';
import 'package:quizwiz/models/quiz_types/programming/programming_quiz_types.dart';
import 'package:quizwiz/models/quiz_types/touristic_knowledge_quiz_type.dart';

import '../../../pages/quiz_page.dart';
import '../../quiz/quiz.dart';
import '../general_culture_quiz_type.dart';
import '../music/music_quiz_type.dart';

class QuizTypeTileMostPopular extends StatelessWidget {
  final String quizType;
  final int index;
  final List<String> mostPopularQuizzes;
  QuizTypeTileMostPopular(
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
              'assets/images/quiz_types/popular/${mostPopularQuizzes[index]}.png',
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
    'Music',
    'Programming',
    'General Culture',
    'Touristic Knowledge',
    'History',
    'Travel',
    'Math',
    'Science',
  ];

  Quiz findPopularQuiz() {
    switch (categories[index]) {
      case 'General Culture':
        return GeneralCulture.historyQuiz;
      case 'Music':
        return MusicQuiz.kurdishSongsQuiz;
      case 'Programming':
        return ProgrammingQuizzes.androidBasicsQuiz;
      case 'Touristic Knowledge':
        return TouristicKnowledgeTypeQuiz.antalyaTourismQuiz;
      case 'History':
        return GeneralCulture.historyQuiz;
      case 'Travel':
        return TouristicKnowledgeTypeQuiz.istanbulTourismQuiz;
      case 'Math':
        return GeneralCulture.mathQuiz;
      default:
        return GeneralCulture.scienceQuiz;
    }
  }
}
