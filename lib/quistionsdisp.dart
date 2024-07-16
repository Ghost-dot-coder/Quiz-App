import 'package:flutter/material.dart';
import 'package:app3/button.dart';
import 'package:app3/model/quistions.dart';

class Quistion extends StatefulWidget {
  const Quistion({super.key});
  @override
  State<Quistion> createState() {
    return _Quistion();
  }
}

class _Quistion extends State<Quistion> {
  var active = 0;

  void onpress() {
    setState(() {
      active++;
    });
  }

  @override
  Widget build(context) {
    final current = question[active];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              current.question,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            ...current.shuffledAnswers().map((answer) {
              return Button(
                answer: answer,
                action: onpress,
              );
            })
          ],
        ),
      ),
    );
  }
}
