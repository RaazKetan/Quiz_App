import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
final List<Map<String, dynamic>> question;
final VoidCallback answerQuestion;
final int questionIndex;

Quiz(
    {required this.question,
      required  this.answerQuestion,
      required  this.questionIndex
    }
    );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),
        //... spread operator to extract the elements of the answer list
        // form the current question object as a separate list. The as
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer){
          return Answer(() => answerQuestion(answer['score']),answer['text'] as String);
        }).toList()
      ],
    );
  }
}
