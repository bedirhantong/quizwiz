import 'package:flutter/material.dart';

import '../main_screen_with_bottom_nav/create_quiz/create_quiz_page.dart';
import '../start_a_challenge/quiz_category.dart';
import 'invite_friends.dart';

class PlayWithFriends extends StatelessWidget {
  const PlayWithFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Choose a category'),
      ),
      body: Stack(
        children: [
          const QuizCategory(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black87),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateQuiz(),
                          ),
                        );
                      },
                      child: const Text(
                        'Create a quiz',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white70),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InviteFriends(),
                          ),
                        );
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
