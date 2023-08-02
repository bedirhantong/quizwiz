import 'package:flutter/material.dart';
import 'package:quizwiz/pages/start_a_challenge/quiz_category.dart';

import 'main_screen/create_quiz_page.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('QuizWiz'),
      ),
      body: ColoredBox(
        color: Colors.deepPurple.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Welcome to QuizWiz.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black87),
                      onPressed: () {
                        setState(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PlayWithFriends(),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text(
                        'Play with friends',
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
                            builder: (context) => const QuizCategory(),
                          ),
                        );
                      },
                      child: const Text(
                        'Play solo',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

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

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Invite friends'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: SearchBar(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.white.withOpacity(0.9),
                ),
                hintText: 'Search for friends',
                leading: const Icon(Icons.search),
              ),
            ),
            Container(
              width: screenSize.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                shadowColor: Colors.black,
                color: Colors.transparent,
                child: ListTile(
                  title: const Text(
                    'Bedirhan Tonğ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Buradan profile gönder'),
                        ),
                      );
                    },
                    iconSize: 50,
                    icon: const CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/user_image_dummy_data/me.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            // const SelectableListScreen(),
          ],
        ),
      ),
    );
  }
}

class SelectableListScreen extends StatefulWidget {
  const SelectableListScreen({super.key});

  @override
  _SelectableListScreenState createState() => _SelectableListScreenState();
}

class _SelectableListScreenState extends State<SelectableListScreen> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  List<bool> selectedItems = List.generate(5, (index) => false);

  void _toggleSelection(int index) {
    setState(() {
      selectedItems[index] = !selectedItems[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selectable List Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              _toggleSelection(index);
            },
            selected: selectedItems[index],
            tileColor: selectedItems[index] ? Colors.blue : null,
            selectedTileColor: Colors.blue,
          );
        },
      ),
    );
  }
}
