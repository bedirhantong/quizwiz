import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quizwiz/pages/main_screen/profile_screen.dart';
import 'package:quizwiz/pages/main_screen/scoreboard_screen.dart';

import '../main_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ChallengeScreen(),
    ScoreboardScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.deepPurple.shade200,
              gap: 8,
              activeColor: Colors.deepPurple,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.deepPurple.shade200,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  iconColor: Colors.white,
                  text: 'Home',
                  textColor: Colors.white,
                ),
                GButton(
                  icon: Icons.gamepad,
                  iconColor: Colors.white,
                  text: 'Play',
                  textColor: Colors.white,
                ),
                GButton(
                  icon: Icons.leaderboard,
                  iconColor: Colors.white,
                  text: 'Scoreboard',
                  textColor: Colors.white,
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizWiz'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenSize.width * 0.95,
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
                      subtitle: const Text(
                        'Welcome to QuizWiz',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
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
                Card(
                  color: Colors.transparent,
                  // recent quiz
                  child: Stack(
                    children: [
                      Container(
                        height: screenSize.height * 0.35,
                        width: screenSize.width * 0.95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/user_image_dummy_data/challenge.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: screenSize.height * 0.16,
                          width: screenSize.width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  'Find your friends and challenge them',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  'A quiz you recently played on Flutter',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.purple),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Find Friends',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: screenSize.width * 0.95,
                  child: Column(
                    children: [
                      AppBar(
                        backgroundColor: Colors.deepPurple,
                        title: const Text('Top Collections'),
                        actions: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Programming',
                                image:
                                    'assets/images/quiz_types/programming.png'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Art',
                                image: 'assets/images/quiz_types/art.png'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Engineering',
                                image:
                                    'assets/images/quiz_types/engineering.png'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Math',
                                image: 'assets/images/quiz_types/math.png'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'Science',
                                image: 'assets/images/quiz_types/science.png'),
                            BuildHistoryOfCategory(
                                screenSize: screenSize,
                                category: 'History',
                                image: 'assets/images/quiz_types/history.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.95,
                  child: Column(
                    children: [
                      AppBar(
                        backgroundColor: Colors.deepPurple,
                        title: const Text('Your Friends'),
                        actions: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildHistoryOfCategory extends StatelessWidget {
  const BuildHistoryOfCategory({
    super.key,
    required this.screenSize,
    required this.category,
    required this.image,
  });

  final Size screenSize;
  final String category;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: [
          Container(
            height: screenSize.height * 0.17,
            width: screenSize.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: screenSize.height * 0.17,
              width: screenSize.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    category,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'See the history',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
