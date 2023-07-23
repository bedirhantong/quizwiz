import 'package:flutter/material.dart';
import 'package:quizwiz/pages/main_screen/scoreboard_screen.dart';

import '../main_screen/bottom_navigation.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNav(),
              ),
            );
          },
          child: const Text('Check is done'),
        ),
      ),
    );
  }
}
