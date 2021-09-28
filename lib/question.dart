import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // note, the _input data_ changed, so this
  // widget will update itself even though the
  // widget itself is stateless!
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(19),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
