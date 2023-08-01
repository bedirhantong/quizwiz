import 'package:flutter/material.dart';

import '../quiz_page.dart';

class QuizCategory extends StatefulWidget {
  const QuizCategory({super.key});

  @override
  State<QuizCategory> createState() => _QuizCategoryState();
}

class _QuizCategoryState extends State<QuizCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: [
            Card(
              shadowColor: Colors.black,
              color: Colors.white10,
              child: Column(
                children: [
                  const Text(
                    'Programming',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildQuiz(context, 'flutter'),
                        buildQuiz(context, 'kotlin'),
                        buildQuiz(context, 'js'),
                        buildQuiz(context, 'java'),
                        buildQuiz(context, 'c'),
                        buildQuiz(context, 'cpp'),
                        buildQuiz(context, 'csharp'),
                        buildQuiz(context, 'swift'),
                        buildQuiz(context, 'python'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              shadowColor: Colors.black,
              color: Colors.white10,
              child: Column(
                children: [
                  const Text(
                    'General Culture',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildQuiz(context, 'flutter'),
                        buildQuiz(context, 'kotlin'),
                        buildQuiz(context, 'js'),
                        buildQuiz(context, 'java'),
                        buildQuiz(context, 'c'),
                        buildQuiz(context, 'cpp'),
                        buildQuiz(context, 'csharp'),
                        buildQuiz(context, 'swift'),
                        buildQuiz(context, 'python'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              shadowColor: Colors.black,
              color: Colors.white10,
              child: Column(
                children: [
                  const Text(
                    'History',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildQuiz(context, 'flutter'),
                        buildQuiz(context, 'kotlin'),
                        buildQuiz(context, 'js'),
                        buildQuiz(context, 'java'),
                        buildQuiz(context, 'c'),
                        buildQuiz(context, 'cpp'),
                        buildQuiz(context, 'csharp'),
                        buildQuiz(context, 'swift'),
                        buildQuiz(context, 'python'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildQuiz(BuildContext context, String image) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const QuizPage(),
              ),
            );
          },
          child: Image(
              image: AssetImage(
                  'assets/images/quiz_types/programming/$image.png')),
        ),
      ),
    );
  }
}
