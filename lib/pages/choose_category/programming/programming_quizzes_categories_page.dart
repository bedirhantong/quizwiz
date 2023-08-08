import 'package:flutter/material.dart';
import 'package:quizwiz/models/quiz_types/programming/programming_quiz_types.dart';

import '../../../models/quiz_types/programming/quiz_type_programming_tile.dart';

class ProgrammingCategoriesPage extends StatelessWidget {
  const ProgrammingCategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> mostPopularQuizzes = [
      'Android',
      'Dotnet',
      'Kotlin',
      'Flutter',
      'Java',
      'Csharp',
      'C',
      'Web',
      'Cyber Security',
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
        title: const Text('Programming'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            crossAxisCount: 2,
          ),
          itemCount: ProgrammingQuizzes.programming.length,
          itemBuilder: (BuildContext context, int index) {
            return QuizTypeProgrammingTile(
              quizType: ProgrammingQuizzes.programming[index].quizName,
              index: index,
              mostPopularQuizzes: mostPopularQuizzes,
            );
          },
        ),
      ),
    );
  }
}
