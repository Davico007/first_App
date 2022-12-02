// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors_in_immutables



import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
          foregroundColor: MaterialStateProperty.all(Colors.redAccent)
        ),
        child: Text(answerText),
        onPressed: selectHandler, 
      ),
      
      
    );
  }
}