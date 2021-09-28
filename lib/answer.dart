import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback callback;
  final String answerText;

  Answer(this.callback, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: callback,
        child: Text(answerText),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
