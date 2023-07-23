import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:quizwiz/pages/start_a_challenge/result_page.dart';
import 'package:lottie/lottie.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];
  List<String> questions = [
    'Flutter is an open-source UI software development kit developed by Google. T',
    'Flutter applications only work on desktop computers.F',
    'Dart programming language is the official language used for Flutter applications.T',
    'Flutter creates interfaces by combining elements called Widgets.T',
    'Flutter can only be used to develop Android applications.F',
    'Flutter\'s official logo is an Infinity symbol inside a blue circle.T',
    'Flutter can only be published on the Google Play Store.F',
    'Flutter doesn\'t provide any pre-built UI components.F',
    'Hot Reload is a feature in Flutter that enables developers to see changes instantly without restarting the app.T',
    'Flutter uses HTML for rendering UI elements.F',
  ];

  String question = '';
  int index = 0;
  int numOfTrue = 0;
  int numOfFalse = 0;

  @override
  void initState() {
    question = questions.elementAt(0);
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
              'assets/images/quiz_types/congrats.json',
              fit: BoxFit.contain,
            ),
            dialogWidth: kIsWeb ? 0.3 : null,
            context: context,
            actions: [
              IconsButton(
                onPressed: () {
                  navigateToResultPage(context);
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
      question = questions[index];
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
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  question,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
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
                  setState(
                    () {
                      changeQuestion();
                      numOfTrue++;
                      scoreKeeper.add(
                        const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Expanded(
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
                  setState(
                    () {
                      changeQuestion();
                      numOfFalse++;
                      scoreKeeper.add(
                        const Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                children: scoreKeeper,
              ),
            ),
          )
        ],
      ),
    );
  }
}
