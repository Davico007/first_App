// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, avoid_print, prefer_const_declarations

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  
  final questions= const [
    {'questionText': "What's your favorite color?",
     'answer': ['Black', 'Grey', 'Green', 'Yellow']
    },

    {'questionText': "What's your favorite animal?",
       'answer': ['Lion', 'Dog', 'Cat', 'Pig']
    },

    {'questionText': "What's your favorite drink?",
     'answer': ['Cway', 'Pepsi', 'Zobo', 'Lipton']
    },

  ];

  var _questionIndex = 0;
  
  void _answerQuestion (){
    setState(() {

      if (_questionIndex < questions.length-1) {
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
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String
            ),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()

            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
