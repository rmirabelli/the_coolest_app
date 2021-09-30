import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);

  String get phrase {
    var result = 'complete';
    if (score >= 11) {
      result = 'you could be king!';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$phrase!',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
