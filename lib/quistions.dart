import 'package:flutter/material.dart';
import 'package:app3/button.dart';

class Quistion extends StatefulWidget {
  const Quistion({super.key});
  @override
  State<Quistion> createState() {
    return _Quistion();
  }
}

class _Quistion extends State<Quistion> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Questions..',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          const SizedBox(
            height: 50,
          ),
          Button(answer: 'Answer 1', action: () {}),
          Button(answer: 'Answer 2', action: () {}),
          Button(answer: 'Answer 3', action: () {}),
        ],
      ),
    );
  }
}
