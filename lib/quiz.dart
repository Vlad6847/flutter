import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final int questionIndex;
  final Function answerQuestionHandler;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestionHandler});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionText: questions[questionIndex]['questionText'],
        ),
        Column(
          children: <Widget>[
            ...(questions[questionIndex]['answers']
                    as List<Map<String, Object>>)
                .map((answer) {
              return Answer(
                text: answer['text'],
                action: () => answerQuestionHandler(answer['score']),
              );
            }).toList(),
          ],
        ),
      ],
    );
  }
}
