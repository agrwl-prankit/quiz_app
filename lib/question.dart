import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // return container if more than 1 element needed
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      width: double.infinity,
      // set the width to match_parent
      child: Text(questionText,
          style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
    );
  }
}
