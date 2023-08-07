import 'package:flutter/material.dart';
import 'package:quizwiz/pages/login/login_screen.dart';

void main() {
  runApp(const QuizWiz());
}

class QuizWiz extends StatelessWidget {
  const QuizWiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: OfficialLoginPage(),
          ),
        ),
      ),
    );
  }
}
