// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import './question.dart';

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
  var _questionIndex = 0;

  void answerQuestion (){
    if (_questionIndex==0) {
    _questionIndex = 1; 
    }else{
      _questionIndex = 0;
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions= [
      "What's your favorite drink?",
      "What's your favorite food?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)
              ),
              onPressed: (){
                setState(() {
                  answerQuestion();
                });
              },
              child: Text('Answer 1')
            ),

            ElevatedButton(
              onPressed: () => print('Answer 2 chosen'),
              child: Text('Answer 2')
            ),

            ElevatedButton(
              
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                foregroundColor: MaterialStateProperty.all(Colors.greenAccent)
              ),
              onPressed: () {
                print('Answer 3 chosen');
              }
              ,
              child: Text('Answer 3')
            )
          ],
        ),
      ),
    );
  }
}
