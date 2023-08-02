import 'package:flutter/material.dart';

class ScoreboardScreen extends StatefulWidget {
  const ScoreboardScreen({super.key});

  @override
  State<ScoreboardScreen> createState() => _ScoreboardScreenState();
}

class _ScoreboardScreenState extends State<ScoreboardScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          Center(child: Text('Scoreboard')),
        ],
      ),
    );
  }
}
