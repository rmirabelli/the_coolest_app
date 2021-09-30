import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your name',
      'answers': [
        {'text': 'Arthur', 'score': 5},
        {'text': 'Robin', 'score': 1},
        {'text': 'Galahad', 'score': 3},
        {'text': 'Lancelot', 'score': 4},
      ],
    },
    {
      'questionText': 'What is your quest',
      'answers': [
        {'text': 'To seek the holy grail', 'score': 4},
        {'text': 'To unite England', 'score': 5},
        {'text': 'To hide in a wooden rabbit', 'score': 2},
      ],
    },
    {
      'questionText': 'What is your favorite color',
      'answers': [
        {'text': 'Blue', 'score': 5},
        {'text': 'Yellow', 'score': 2},
        {'text': 'Black', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void buttonPressed(int score) {
    _totalScore += score;
    setState(() => _questionIndex++);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Coolest App'),
        ),
        body: _questionIndex >= _questions.length
            ? Result(_totalScore)
            : Quiz(
                _questions,
                _questionIndex,
                buttonPressed,
              ),
      ),
    );
  }
}
