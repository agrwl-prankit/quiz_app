import 'package:flutter/material.dart';

class Result extends StatelessWidget{

  final int resultScore;

  Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Question complete. \n Your total score is : $resultScore'));
  }
}