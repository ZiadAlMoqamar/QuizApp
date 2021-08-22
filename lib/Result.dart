import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  String get resultText{
    String txt;
    if(score>=10){
      txt="You are Cute";
    }
    else{
      txt= "We did not match!!";
    }
    return txt;
  }
  Result({required this.score});
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              resultText,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              "Your Score is $score",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )
        ]);
  }
}
