import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function restartQuiz;

  Result({@required this.score, this.restartQuiz});

  String get resultPhrase {
    String resultText = '';

    if (score <= 8) {
      resultText = 'You are awesome';
    } else if (score <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: restartQuiz,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
