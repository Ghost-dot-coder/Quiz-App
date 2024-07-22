import 'package:flutter/material.dart';
import 'package:app3/data/questions.dart';
import 'package:app3/firstpage.dart';
import 'package:app3/questionpage.dart';
import 'package:app3/result_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  State<QuizPage> createState() {
    return _QuizPageState();
  }
}

class _QuizPageState extends State<QuizPage> {
  List<String> selectedanswers = [];
  var activeScreen = 'first-screen';

  void changeScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void selectedAnswer(String answer) {
    selectedanswers.add(answer);
    if (selectedanswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screen = FirstPage(changeScreen);
    if (activeScreen == 'question-screen') {
      screen = QuestionPage(onSelectanswer: selectedAnswer);
    }
    if (activeScreen == 'result-screen') {
      screen = ResultScreen(
        chosenAnswers: selectedanswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Color.fromARGB(255, 141, 82, 242),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screen,
        ),
      ),
    );
  }
}
