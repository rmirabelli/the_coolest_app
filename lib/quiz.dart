import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final int _questionIndex;
  final Function(int) buttonPressed;
  Quiz(this._questions, this._questionIndex, this.buttonPressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionIndex]['questionText'] as String),
        ...(_questions[_questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => {buttonPressed(answer['score'] as int)},
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
