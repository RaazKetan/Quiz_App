import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main(){
// runApp(MyApp());
// }
void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  final  _question = [
    {'questionText':  'Whats\'s your favorite color?',
      'answers':[{'text':'Black','score':10},
        {'text':'White','score':20},
        {'text':'Red','score':30},
        {'text':'Blue','score':40}],
    },
    {'questionText':  'Whats\'s your favorite Animal?',
      'answers':[
        {'text':'Lion','score':10},
        {'text':'Tiger','score':20},
        {'text':'Dog','score':30},
        {'text':'Cat','score':40},
      ],
    },
    {'questionText':  'Whats\'s your favorite Language?',
      'answers':[
        {'text':'C++','score':10},
        {'text':'C','score':20},
        {'text':'Python','score':30},
        {'text':'Java','score':40}
      ],
    },
  ];
  var _questionIndex = 0;
var _totalScore = 0;
  void _answerQuestion(int score){
     _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex+1;
    });
    if(_questionIndex < _question.length){
      print('We have more Question');
    }
    else
      {
        print('No more Question');
      }
}
  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Quiz App')),
        ),
        body: _questionIndex< _question.length
            ? Quiz(
            answerQuestion: _answerQuestion(_totalScore),
            questionIndex: _questionIndex,
            question:_question,
        )
       : const Result(),
      ),
    );
  }
}
