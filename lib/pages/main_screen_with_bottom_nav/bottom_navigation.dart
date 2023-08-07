import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quizwiz/pages/main_screen_with_bottom_nav/profile/profile_screen.dart';
import 'package:quizwiz/pages/main_screen_with_bottom_nav/scoreboard/scoreboard_screen.dart';

import '../main_screen.dart';
import 'home/home_page.dart';

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
