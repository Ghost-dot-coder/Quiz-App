import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage(this.changeScreen, {super.key});
  final void Function() changeScreen;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Color.fromARGB(255, 155, 51, 246)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              height: 200,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Learn Flutter the Fun way!',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 220, 206, 243),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: changeScreen,
              icon: const Icon(
                Icons.arrow_right_rounded,
              ),
              label: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
