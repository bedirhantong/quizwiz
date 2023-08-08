import 'package:flutter/material.dart';
import 'package:quizwiz/pages/choose_category/art/art_quizzes_categories_page.dart';
import 'package:quizwiz/pages/choose_category/engineering/engineering_quizzes_categories_page.dart';
import 'package:quizwiz/pages/choose_category/history/history_quizzes_categories_page.dart';
import 'package:quizwiz/pages/choose_category/math/math_quizzes_categories_page.dart';
import 'package:quizwiz/pages/choose_category/programming/programming_quizzes_categories_page.dart';
import 'package:quizwiz/pages/choose_category/science/science_quizzes_categories_page.dart';

import '../../models/quiz_types/main_popular/quiz_type_tile.dart';
import '../main_screen_with_bottom_nav/home/history_of_category.dart';

class ChooseCategory extends StatefulWidget {
  const ChooseCategory({super.key});

  @override
  State<ChooseCategory> createState() => _ChooseCategoryState();
}

class _ChooseCategoryState extends State<ChooseCategory> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: const Text('Choose a category'),
      ),
      body: QuizTypeSelectionScreen(),
    );
  }
}

class QuizTypeSelectionScreen extends StatelessWidget {
  final List<String> mostPopularQuizzes = [
    'MusicQuiz',
    'ProgrammingQuizzes',
    'GeneralCulture',
    'TouristicKnowledgeTypeQuiz',
    'history',
    'travel',
    'math',
    'science',
  ];
  final List<String> quizTypes = [
    'Music',
    'Programming',
    'General Culture',
    'Touristic Knowledge',
    'History',
    'Travel',
    'Math',
    'Science',
  ];
  QuizTypeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    // the categories the ones are at the top of the screen
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
        page: const ArtCategoriesPage(),
      ),
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'Engineering',
        image: 'assets/images/quiz_types/categories/engineering.png',
        page: const EngineeringCategoriesPage(),
      ),
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'Math',
        image: 'assets/images/quiz_types/categories/math.png',
        page: const MathCategoriesPage(),
      ),
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'Science',
        image: 'assets/images/quiz_types/categories/science.png',
        page: const ScienceCategoriesPage(),
      ),
      BuildHistoryOfCategory(
        screenSize: screenSize,
        category: 'History',
        image: 'assets/images/quiz_types/categories/history.png',
        page: const HistoryCategoriesPage(),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.purple.shade800,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildHomeCollectionsTab(screenSize, historyOfCategories),
          AppBar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(100),
                top: Radius.circular(100),
              ),
            ),
            backgroundColor: Colors.black,
            centerTitle: true,
            leading: const Text(''),
            title: const Text(
              'Most Popular Quizzes',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  crossAxisCount: 2,
                ),
                itemCount: quizTypes.length,
                itemBuilder: (BuildContext context, int index) {
                  return QuizTypeTileMostPopular(
                    quizType: quizTypes[index],
                    index: index,
                    // image : mostPopularQuizzes[index],
                    mostPopularQuizzes: mostPopularQuizzes,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  SizedBox buildHomeCollectionsTab(
      Size screenSize, List<BuildHistoryOfCategory> historyOfCategories) {
    return SizedBox(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: historyOfCategories,
        ),
      ),
    );
  }
}
