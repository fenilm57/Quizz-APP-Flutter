import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';
import './reset.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'question': 'What\'s your fav color?',
      'answer': ['Black', 'Blue', 'Green', 'Red']
    },
    {
      'question': 'What\'s your fav Food?',
      'answer': ['Pizza', 'Burger', 'French Fries', 'VadaPav']
    }
  ];
  var index = 0;
  void clicked() {
    setState(() {
      index += 1;
    });
  }

  void reset() {
    setState(() {
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz'),
          centerTitle: false,
        ),
        body: Container(
          width: double.infinity,
          child: Center(
              child: index < questions.length
                  ? Column(
                      children: [
                        Question(questions[index]['question']),
                        ...(questions[index]['answer'] as List<String>)
                            .map((a) {
                          return Answers(clicked, a);
                        }).toList(),
                      ],
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Quizz Finished!!',
                            style: TextStyle(fontSize: 30),
                          ),
                          Reset(reset)
                        ],
                      ),
                    )),
        ),
      ),
    );
  }
}
