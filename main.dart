// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, avoid_print, prefer_const_declarations, duplicate_import, unused_field


import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';


void main() {
  runApp(First_App());
}

class First_App extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _First_AppState();
  }
}
class _First_AppState extends State<First_App> {
  
  final _questions= const [
    {'questionText': "What's your favorite color?",
     'answer': [
        {'text':'Black', 'score': 10}, 
        {'text':'Red', 'score': 6}, 
        {'text':'Green', 'score': 2}, 
        {'text':'Yellow', 'score': 5}
      ],
    },

    {'questionText': "What's your favorite animal?",
       'answer': [
          {'text':'Lion', 'score': 2}, 
          {'text':'Dog', 'score': 6}, 
          {'text':'Pig', 'score': 5}, 
          {'text':'Cat', 'score': 10}
        ]
    },

    {'questionText': "What's your favorite drink?",
     'answer': [
        {'text':'Cway', 'score': 2}, 
        {'text':'Hollandia', 'score': 6}, 
        {'text':'Sprite', 'score': 5}, 
        {'text':'Pepsi', 'score': 10}
      ]
    },

  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  
  void _answerQuestion (int score){

    _totalScore = _totalScore + score;
    setState(() {

      

      if (_questionIndex < _questions.length) {
        _questionIndex = _questionIndex + 1;
      }else{
        print('No more questions');
      }
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: _questionIndex < _questions.length ? 
          Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          )
         : Result(_totalScore)
      ),
    );
  }
}
