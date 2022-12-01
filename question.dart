// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10 ),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 30
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}