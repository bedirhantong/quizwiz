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
                  icon: Icons.add,
                  iconColor: Colors.white,
                  text: 'Challenge',
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
      backgroundColor: Colors.deepPurple.shade300,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
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
                  backgroundImage:
                      AssetImage('assets/images/user_image_dummy_data/me.jpg'),
                ),
              ),
            ),
          ),
          Card(
            shadowColor: Colors.black,
            color: Colors.transparent,
            // recent quiz
            child: ListTile(
              leading: const Icon(
                Icons.music_note_outlined,
                color: Colors.white,
              ),
              title: const Text(
                'Recent Quiz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'A quiz you recently played on Flutter',
                style: TextStyle(
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
          Card(
            color: Colors.transparent,
            // recent quiz
            child: Stack(
              children: [
                Container(
                  height: screenSize.height * 0.35,
                  width: screenSize.width * 0.9,
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
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.purple),
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
        ],
      ),
    );
  }
}
