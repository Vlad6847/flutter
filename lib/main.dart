import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s you favourite color?',
      'answers': [
        {
          'text': 'Red',
          'score': 10,
        },
        {
          'text': 'Black',
          'score': 8,
        },
        {
          'text': 'Green',
          'score': 6,
        },
      ],
    },
    {
      'questionText': 'What\'s you favourite animal?',
      'answers': [
        {
          'text': 'Dog',
          'score': 9,
        },
        {
          'text': 'Cat',
          'score': 7,
        },
        {
          'text': 'Rabbit',
          'score': 5,
        },
      ],
    }
  ];

  void _answerQuestion(currentAnswerScore) {
    _totalScore += currentAnswerScore;
    if (_questionIndex < _questions.length) {
      setState(() => _questionIndex++);
    }
  }

  void _restartQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestionHandler: _answerQuestion,
              )
            : Result(score: _totalScore, restartQuiz: _restartQuiz),
      ),
    );
  }
}
