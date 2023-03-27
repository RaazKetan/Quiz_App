import 'package:flutter/material.dart';

void main(){
runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build (BuildContext context)
  {
    var question = [
      'Whats\'s your favorite color?',
      'Whats\'s your favorite color?',
      'Whats\'s your favorite color?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz App')),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
          ],
        )
      ),
    );

  }
}
