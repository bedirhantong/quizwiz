import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:quizwiz/pages/start_a_challenge/result_page.dart';
import 'package:lottie/lottie.dart';

import '../models/questions/question.dart';
import '../models/quiz/quiz.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  List<Question> questions = [
    Question(
        q: 'Flutter is an open-source UI software development kit developed by Google.',
        a: true),
    Question(
        q: 'Flutter applications only work on desktop computers.', a: false),
    Question(
        q: 'Dart programming language is the official language used for Flutter applications',
        a: true),
    Question(
        q: 'Flutter creates interfaces by combining elements called Widgets.',
        a: true),
    Question(
        q: 'Flutter can only be used to develop Android applications.',
        a: false),
    Question(
        q: 'Flutter\'s official logo is an Infinity symbol inside a blue circle.',
        a: true),
    Question(
        q: 'Flutter can only be published on the Google Play Store.', a: false),
    Question(
        q: 'Flutter doesn\'t provide any pre-built UI components.', a: false),
    Question(
        q: 'Hot Reload is a feature in Flutter that enables developers to see changes instantly without restarting the app.',
        a: true),
    Question(q: 'Flutter uses HTML for rendering UI elements.', a: false),
  ];
  Quiz quiz = Quiz(
    quizName: 'Programming',
    numberOfQuestion: 10,
    imageString: 'imageString',
    questions: [
      Question(
          q: 'Flutter is an open-source UI software development kit developed by Google.',
          a: true),
      Question(
          q: 'Flutter applications only work on desktop computers.', a: false),
      Question(
          q: 'Dart programming language is the official language used for Flutter applications',
          a: true),
      Question(
          q: 'Flutter creates interfaces by combining elements called Widgets.',
          a: true),
      Question(
          q: 'Flutter can only be used to develop Android applications.',
          a: false),
      Question(
          q: 'Flutter\'s official logo is an Infinity symbol inside a blue circle.',
          a: true),
      Question(
          q: 'Flutter can only be published on the Google Play Store.',
          a: false),
      Question(
          q: 'Flutter doesn\'t provide any pre-built UI components.', a: false),
      Question(
          q: 'Hot Reload is a feature in Flutter that enables developers to see changes instantly without restarting the app.',
          a: true),
      Question(q: 'Flutter uses HTML for rendering UI elements.', a: false),
    ],
  );

  Question currentQuestion = Question(q: '', a: false);
  int index = 0;
  int numOfTrue = 0;
  int numOfFalse = 0;
  late bool rightAnswer;

  @override
  void initState() {
    currentQuestion = questions.elementAt(0);
    rightAnswer = questions.elementAt(0).questionAnswer;
    super.initState();
  }

  void changeQuestion() {
    index++;
    if (index == questions.length) {
      setState(
        () {
          Dialogs.materialDialog(
            color: Colors.white,
            msg: 'Congratulations, you won 500 points',
            title: 'Congratulations',
            lottieBuilder: Lottie.asset(
              'assets/images/quiz_types/programming/congrats.json',
              fit: BoxFit.contain,
            ),
            dialogWidth: kIsWeb ? 0.3 : null,
            context: context,
            actions: [
              IconsButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                    navigateToResultPage(context);
                  });
                  // navigateToResultPage(context);
                },
                text: 'Claim',
                iconData: Icons.done,
                color: Colors.blue,
                textStyle: const TextStyle(color: Colors.white),
                iconColor: Colors.white,
              ),
            ],
          );
        },
      );
    } else {
      currentQuestion = questions[index];
      rightAnswer = questions[index].questionAnswer;
    }
  }

  void navigateToResultPage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const ResultPage()),
      (route) =>
          false, // Tüm diğer sayfaları stackten kaldırmak için "false" döndürüyoruz.
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildQuestion(),
          buildTrueButton(),
          buildFalseButton(),
          buildScoreKeeper()
        ],
      ),
    );
  }

  Expanded buildQuestion() {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            currentQuestion.questionText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildTrueButton() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(backgroundColor: Colors.green),
          child: const Text(
            'True',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            if (currentQuestion.questionAnswer == true) {
              numOfTrue++;
              setState(() {
                scoreKeeper.add(
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                );
              });
            } else {
              numOfFalse++;
              setState(() {
                scoreKeeper.add(
                  const Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                );
              });
            }
            setState(
              () {
                changeQuestion();
              },
            );
          },
        ),
      ),
    );
  }

  Expanded buildFalseButton() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text(
            'False',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            if (currentQuestion.questionAnswer == false) {
              numOfTrue++;
              setState(() {
                scoreKeeper.add(
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                );
              });
            } else {
              numOfFalse++;
              setState(() {
                scoreKeeper.add(
                  const Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                );
              });
            }
            setState(
              () {
                changeQuestion();
              },
            );
          },
        ),
      ),
    );
  }

  Expanded buildScoreKeeper() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          children: scoreKeeper,
        ),
      ),
    );
  }
}
