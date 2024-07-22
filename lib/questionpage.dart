import 'package:flutter/material.dart';
import 'package:app3/button.dart';
import 'package:app3/data/questions.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key, required this.onSelectanswer});
  final void Function(String answer) onSelectanswer;
  @override
  State<QuestionPage> createState() {
    return _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> {
  var current = 0;
  void answerQuestion(String selectedAnswer) {
    widget.onSelectanswer(selectedAnswer);
    setState(() {
      current = current + 1;
    });
  }

  @override
  Widget build(context) {
    final currentquestion = questions[current];
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentquestion.question,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            ...currentquestion.getShuffledanswers().map((answers) {
              return Button(
                  onTap: () {
                    answerQuestion(answers);
                  },
                  answer: answers);
            })
          ],
        ),
      ),
    );
  }
}
