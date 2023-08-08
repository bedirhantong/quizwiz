import 'package:flutter/material.dart';

import '../../choose_category/programming/programming_quizzes_categories_page.dart';
import 'friends_avatar.dart';
import 'history_of_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    List<BuildHistoryOfCategory> historyOfCategories = [
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'Programming',
        image: 'assets/images/quiz_types/categories/ProgrammingQuizzes.png',
        page: const ProgrammingCategoriesPage(),
      ),
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'Art',
        image: 'assets/images/quiz_types/categories/art.png',
        page: const HomePage(),
      ),
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'Engineering',
        image: 'assets/images/quiz_types/categories/engineering.png',
        page: const HomePage(),
      ),
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'Math',
        image: 'assets/images/quiz_types/categories/math.png',
        page: const HomePage(),
      ),
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'Science',
        image: 'assets/images/quiz_types/categories/science.png',
        page: const HomePage(),
      ),
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'History',
        image: 'assets/images/quiz_types/categories/history.png',
        page: const HomePage(),
      ),
    ];
    List<BuildFriendsAvatar> historyFriendsAvatar = [
      const BuildFriendsAvatar(
        image: 'https://avatars.githubusercontent.com/u/129434780?v=4',
        username: 'sinan',
      ),
      const BuildFriendsAvatar(
        image: 'https://avatars.githubusercontent.com/u/102352030?v=4',
        username: 'serhan',
      ),
      const BuildFriendsAvatar(
        image: 'https://avatars.githubusercontent.com/u/41289874?v=4',
        username: 'musa',
      ),
      const BuildFriendsAvatar(
        image: 'https://avatars.githubusercontent.com/u/94411717?v=4',
        username: 'yusuf',
      ),
      const BuildFriendsAvatar(
        image: 'https://avatars.githubusercontent.com/u/94488767?v=4',
        username: 'ibo',
      ),
      const BuildFriendsAvatar(
        image: 'https://avatars.githubusercontent.com/u/98186031?v=4',
        username: 'onur',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('QuizWiz'),
        centerTitle: true,
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: Colors.grey.shade800,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildHomeWelcomeCard(screenSize, context),
                buildHomeFindFriendsCard(screenSize),
                const SizedBox(
                  height: 10,
                ),
                buildHomeCollectionsTab(screenSize, historyOfCategories),
                const SizedBox(
                  height: 10,
                ),
                buildHomeYourFriendsTab(screenSize, historyFriendsAvatar)
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildHomeCollectionsTab(
      Size screenSize, List<BuildHistoryOfCategory> historyOfCategories) {
    return SizedBox(
      width: screenSize.width * 0.95,
      child: Column(
        children: [
          AppBar(
            leading: const Icon(Icons.collections_bookmark_outlined),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
                top: Radius.circular(10),
              ),
            ),
            backgroundColor: Colors.grey.shade900,
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
              children: historyOfCategories,
            ),
          ),
        ],
      ),
    );
  }

  SizedBox buildHomeYourFriendsTab(
      Size screenSize, List<BuildFriendsAvatar> historyFriendsAvatar) {
    return SizedBox(
      width: screenSize.width * 0.95,
      child: Column(
        children: [
          AppBar(
            leading: const Icon(Icons.people),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(10),
                top: Radius.circular(10),
              ),
            ),
            backgroundColor: Colors.grey.shade900,
            title: const Text('Your Friends'),
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
              children: historyFriendsAvatar,
            ),
          )
        ],
      ),
    );
  }

  Card buildHomeFindFriendsCard(Size screenSize) {
    return Card(
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
    );
  }

  Container buildHomeWelcomeCard(Size screenSize, BuildContext context) {
    return Container(
      width: screenSize.width * 0.95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey,
        color: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
            top: Radius.circular(10),
          ),
        ),
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
    );
  }
}
