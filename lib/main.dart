import 'package:flutter/material.dart';
import './question.dart';

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

  void answerQuestion(){
    setState(() {
      _questionIndex = _questionIndex+1;
    });
    print(_questionIndex);
}
  @override
  Widget build (BuildContext context)
  {
    var question = [
      'Whats\'s your favorite color?',
      'Whats\'s your favorite Animal?',
      'Whats\'s your favorite Food?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz App')),
        ),
        body: Column(
          children: [
            Question(
                question[_questionIndex],
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
          ],
        )
      ),
    );
  }
}
