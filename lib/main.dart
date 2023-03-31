import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex+1;
    });
}
  @override
  Widget build (BuildContext context)
  {
    List<Map<String, dynamic>> question = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Quiz App')),
        ),
        body: Column(
          children: [
            Question(
                question[_questionIndex]['questionText'],
            ),
          //... spread operator to extract the elements of the answer list
            // form the current question object as a separate list. The as
          ...(question[_questionIndex]['answers'] as List<String>)
              .map((answer){
            return Answer(_answerQuestion,answer);
            }).toList()

          ],
        )
      ),
    );
  }
}
