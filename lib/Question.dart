import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: Center(
        child: Text(questionText,
        style: TextStyle(color: Colors.black,
        fontSize: 25),
        ),
      ),
    );
  }
}