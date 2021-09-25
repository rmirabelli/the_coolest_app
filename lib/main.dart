import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    'What is your name',
    'what is your quest',
    'What is your favorite color',
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('The Coolest App'),
      ),
      body: Column(
        children: [
          Question(_questions[_questionIndex]),
          RaisedButton(
            onPressed: () => _questionIndex++,
            child: Text('one'),
          ),
          RaisedButton(
            onPressed: () => _questionIndex++,
            child: Text('two'),
          ),
          RaisedButton(
            onPressed: () => _questionIndex++,
            child: Text('three'),
          ),
        ],
      ),
    ));
  }
}
