import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What is your name',
      'answers': [
        'Arthur',
        'Robin',
        'Galahad',
        'Lancelot',
      ],
    },
    {
      'questionText': 'What is your quest',
      'answers': [
        'To seek the holy grail',
        'To unite England',
        'To hide in a wooden rabbit',
      ],
    },
    {
      'questionText': 'What is your favorite color',
      'answers': [
        'Blue',
        'Yellow',
        'Black',
      ],
    },
  ];

  var _currentQuestionIndex = 0;

  int get _questionIndex {
    return _currentQuestionIndex;
  }

  set _questionIndex(int newIndex) {
    if (newIndex >= _questions.length) {
      newIndex = 0;
    }
    setState(() => {_currentQuestionIndex = newIndex});
  }

  void buttonPressed() {
    _questionIndex++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('The Coolest App'),
      ),
      body: Column(
        children: [
          Question(_questions[_questionIndex]['questionText'] as String),
          ...(_questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(buttonPressed, answer);
          }).toList(),
        ],
      ),
    ));
  }
}
