// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase{
    var resultText;
    if (resultScore<=8) {
      resultText = 'You are awewsome and innocent';
    } else if (resultScore<=12) {
      resultText = 'You are ... strange';
    } else{
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
        style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
        
    );
  }
}