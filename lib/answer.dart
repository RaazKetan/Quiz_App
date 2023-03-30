import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
 final  VoidCallback selectHandler;
  Answer(this.selectHandler);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber
        ),
        onPressed: selectHandler,
        child: const Text('Answer 1'),
      ),
    );
  }
}
