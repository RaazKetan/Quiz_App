import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
 final  VoidCallback selectHandler;
 final String answerText;
  Answer(this.selectHandler, this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
