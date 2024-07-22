import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage(this.changeScreen, {super.key});
  final void Function() changeScreen;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            color: const Color.fromARGB(157, 255, 255, 255),
            height: 200,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Learn Flutter \n The Fun Way!!',
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(157, 255, 255, 255)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.arrow_circle_right),
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(136, 104, 58, 183)),
            onPressed: changeScreen,
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
