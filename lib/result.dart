import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text('Question complete. \n Your total score is : $resultScore'),
          FlatButton(
            child: Text('Restart quiz!'),
            color: Colors.red,
            onPressed: resetHandler,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
