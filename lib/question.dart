import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Text(
          questionText,
          style: const TextStyle(
        fontSize: 28
        ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
