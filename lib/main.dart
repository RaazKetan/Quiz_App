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
      'answers':['Black', 'Red', 'Green', 'White', 'Blue'],
    },
    {'questionText':  'Whats\'s your favorite Animal?',
      'answers':['Dog', 'Cat', 'Lion', 'Tiger'],
    },
    {'questionText':  'Whats\'s your favorite Language?',
      'answers':['Dart', 'Pyhton', 'C', 'C++'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion(){
    var aBOOl = true;

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
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            question:_question,
        )
       : const Result(),
      ),
    );
  }
}
