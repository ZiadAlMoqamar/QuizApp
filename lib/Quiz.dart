import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questionsAndAnswers;
  final int questionIndex;
  final Function incrementQuestionCounter;
  Quiz(
      {required this.questionsAndAnswers,
      required this.questionIndex,
      required this.incrementQuestionCounter});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Question(
              questionsAndAnswers[questionIndex]['questionText'] as String),
          ...(questionsAndAnswers[questionIndex]['answers']
                  as List<Map<String, Object>>)
              .map((answer) {
            return Answer(answer['choice'] as String,
                () => incrementQuestionCounter(answer['score']));
          }),
        ]);
  }
}
