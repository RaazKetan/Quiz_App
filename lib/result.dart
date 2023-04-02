import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
Result(this.resultScore, this.resetHandler);

String get resultPhrase{
  var resultText = 'You did it';
  if(resultScore <=30){
    resultText = "You are awesome and innocent";
  }
  else if (resultScore<=40){
    resultText = "Pretty likabe !";
  }
  else if(resultScore<=50)
    {
      resultText = "You are .... Strange";
    }
  else
    {
      resultText = "You are so bad";
    }
  return resultText;
}
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,
            style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetHandler,
              child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
