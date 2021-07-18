import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your Favorite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 2},
        {'text': 'Red', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your Favroite Animal?',
      'answers': [
        {'text': 'Horse', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 10},
        {'text': 'Sparrow', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your Favorite Game?',
      'answers': [
        {'text': 'Cricket', 'score': 2},
        {'text': 'Football', 'score': 5},
        {'text': 'Hockey', 'score': 10},
        {'text': 'Badminton', 'score': 4}
      ],
    },
    {
      'questionText': 'What\'s your Favorite Fruit?',
      'answers': [
        {'text': 'Apple', 'score': 4},
        {'text': 'Banana', 'score': 5},
        {'text': 'Mango', 'score': 2},
        {'text': 'Orange', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('More Questions are there.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
