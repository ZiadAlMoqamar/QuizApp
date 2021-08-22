import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './Quiz.dart';
import './Result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Quiz App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  bool questionsFinished = false;
  int _quizScore = 0;

  var questionsAndAnswers = [
    {
      'questionText': "What is your favourite colour?",
      'answers': [
        {'choice': "Red", "score": 10},
        {'choice': "Blue", 'score': 5},
        {'choice': "Green", "score": 2},
        {'choice': "Orange", 'score': 1}
      ]
    },
    {
      'questionText': "What is your favourite team?",
      'answers': [
        {'choice': "Real Madrid", 'score': 10},
        {'choice': "Bayern Munich", 'score': 6},
        {'choice': "Liverpool", 'score': 2}
      ]
    },
    {
      'questionText': "What is your favourite animal?",
      'answers': [
        {'choice': "Cat", 'score': 10},
        {'choice': "Horse", 'score': 5},
        {'choice': "Dog", 'score': 2}
      ]
    },
  ];
  void _incrementQuestionCounter(int score) {
    setState(() {
      if (_questionIndex < questionsAndAnswers.length - 1) {
        _questionIndex++;
        _quizScore += score;
      } else {
        questionsFinished = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: !questionsFinished
            ? Quiz(
                questionsAndAnswers: questionsAndAnswers,
                questionIndex: _questionIndex,
                incrementQuestionCounter: _incrementQuestionCounter,
              )
            : Result(
                score: _quizScore,
              ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restart_alt),
        onPressed: () {
          setState(() {
            questionsFinished = false;
            _questionIndex = 0;
            _quizScore = 0;
          });
        },
      ),
    );
  }
}
