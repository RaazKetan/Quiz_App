import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Text(
          questionText,
          style: TextStyle(
        fontSize: 28
        ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
