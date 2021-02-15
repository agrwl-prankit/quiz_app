import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState(); // there is no private and public in flutter, for that we use underscore for private
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'questionText': 'What is your favourite course?',
      'answers': [
        {'text': 'Red', 'score': 5},
        {'text': 'Black', 'score': 10},
        {'text': 'Blue', 'score': 8}
      ],
    },
    {
      'questionText': 'Who is the national animal of india?',
      'answers': [
        {'text': 'Lion', 'score': 4},
        {'text': 'Cat', 'score': 6},
        {'text': 'Dog', 'score': 9}
      ],
    },
    {
      'questionText': 'Which course are you studying?',
      'answers': [
        {'text': 'BBA', 'score': 6},
        {'text': 'BSC', 'score': 4},
        {'text': 'BTech', 'score': 8}
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    // // flutter does not automatic update or rebuild ui
    setState(() {
      // it force flutter to rebuild ui (not the entire) but written in it
      _qIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        //body: Text("This is my default text"), // text is a widget display on app
        // body does not allow multiple widget (neither comma separated nor concatenated)
        // for that we pas multiple widget as a list using column
        body: _qIndex < _questions.length
            ? Quiz(
                questions: _questions,
                qIndex: _qIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

/*
  State is data/ information used by app.
  1. AppState: Authenticated Users, Loaded jobs......
  2. WidgetState: current user input, show properties (loading spinner, etc..)...
*/
