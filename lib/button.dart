import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.onTap, required this.answer});
  final void Function() onTap;
  final String answer;
  @override
  Widget build(context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: Colors.black, foregroundColor: Colors.white),
      onPressed: onTap,
      child: Text(answer),
    );
  }
}
