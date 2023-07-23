import 'package:flutter/material.dart';

class CreateQuiz extends StatefulWidget {
  const CreateQuiz({super.key});

  @override
  State<CreateQuiz> createState() => _CreateQuizState();
}

class _CreateQuizState extends State<CreateQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: const Center(
        child: Text(
          'Create Quiz',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
