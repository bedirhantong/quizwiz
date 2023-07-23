import 'package:flutter/material.dart';

class ScoreboardScreen extends StatefulWidget {
  const ScoreboardScreen({super.key});

  @override
  State<ScoreboardScreen> createState() => _ScoreboardScreenState();
}

class _ScoreboardScreenState extends State<ScoreboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      body: const Center(
        child: Text(
          'Scoreboard',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
