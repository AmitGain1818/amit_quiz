import 'package:amit/answer.dart';
import 'package:amit/question.dart';
import 'package:flutter/material.dart';

void main() => runApp(Amit());

class Amit extends StatefulWidget {
  @override
  _AmitState createState() => _AmitState();
}

class _AmitState extends State<Amit> {
  var question = [
    {
      'questionText': 'What is your name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your pet name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your car name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your animal name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your bird name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your phone name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your favorite watch name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your favorite dress name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your favorite shirt name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your favorite home name?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your address?',
      'answer': ['A', 'B', 'C', 'D']
    },
    {
      'questionText': 'What is your favorite pen name?',
      'answer': ['A', 'B', 'C', 'D']
    },
  ];
  var _answerIndex = 0;
  void _answerQuestion() {
    setState(() {
      _answerIndex = _answerIndex + 1;
    });
    print(_answerIndex);

    if (_answerIndex < question.length) {
      print('you have more questions');
    } else {
      print('you are done!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Amit Quiz')),
        ),
        body: Center(
          child: _answerIndex < question.length
              ? Column(
                  children: [
                    Questions(question[_answerIndex]['questionText'] as String),
                    ...(question[_answerIndex]['answer'] as List<String>)
                        .map((answer) {
                      return Answers(_answerQuestion, answer);
                    }),
                  ],
                )
              : Center(
                  child: Text('This Quiz is completed'),
                ),
        ),
      ),
    );
  }
}
