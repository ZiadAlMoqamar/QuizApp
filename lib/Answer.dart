import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback onPressed;
  Answer(this.answerText, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: RaisedButton(
        color: Colors.blueAccent,
        textColor: Colors.white,
        onPressed: onPressed,
        
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
