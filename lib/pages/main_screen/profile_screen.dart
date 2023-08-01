import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('QuizWiz'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text(
              'Bedirhan',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            subtitle: const Text(
              '@bedirhantng',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            trailing: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: const Image(
                  image:
                      AssetImage('assets/images/user_image_dummy_data/me.jpg'),
                ),
              ),
            ),
          ),
          const Expanded(child: TabBarExample()),
        ],
      ),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Quizzes',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Collections',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'About',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BuildQuizz(
                        screenSize: screenSize,
                        quizName: 'Music Quiz',
                        quizDescription: 'Music Quiz Description'),
                    BuildQuizz(
                        screenSize: screenSize,
                        quizName: 'Culture Quiz',
                        quizDescription: 'Culture Quiz Description'),
                    BuildQuizz(
                        screenSize: screenSize,
                        quizName: 'Flutter Quiz',
                        quizDescription: 'Flutter Quiz Description'),
                    BuildQuizz(
                        screenSize: screenSize,
                        quizName: 'Dart Quiz',
                        quizDescription: 'Dart Quiz Description'),
                    BuildQuizz(
                        screenSize: screenSize,
                        quizName: 'Math Quiz',
                        quizDescription: 'Math Quiz Description'),
                    BuildQuizz(
                        screenSize: screenSize,
                        quizName: 'Science Quiz',
                        quizDescription: 'Science Quiz Description'),
                    BuildQuizz(
                        screenSize: screenSize,
                        quizName: 'Culture Quiz',
                        quizDescription: 'Culture Quiz Description'),
                  ],
                ),
              ),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildQuizz extends StatelessWidget {
  const BuildQuizz({
    super.key,
    required this.screenSize,
    required this.quizName,
    required this.quizDescription,
  });

  final Size screenSize;
  final String quizName;
  final String quizDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        shadowColor: Colors.black,
        color: Colors.transparent,
        // recent quiz
        child: ListTile(
          leading: const Icon(
            Icons.music_note_outlined,
            color: Colors.white,
          ),
          title: Text(
            quizName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            quizDescription,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Buradan quize gönder',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Settings'),
      ),
    );
  }
}
