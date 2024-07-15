import 'package:app3/quistions.dart';
import 'package:flutter/material.dart';
import 'package:app3/first_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  Widget? changescreen;
  @override
  void initState() {
    changescreen = FirstPage(buttonAction);
    super.initState();
  }

  void buttonAction() {
    setState(() {
      changescreen = const Quistion();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.deepPurple,
              Color.fromARGB(255, 131, 88, 206),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: changescreen,
        ),
      ),
    );
  }
}
