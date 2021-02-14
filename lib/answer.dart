import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue,
        onPressed: selectHandler,
      ),
    );
  }
}