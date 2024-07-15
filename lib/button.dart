import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.answer, required this.action});
  final String answer;
  final void Function() action;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: action,
      child: Text(answer),
    );
  }
}
