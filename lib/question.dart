import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  final String questext;
  Question(this.questext);
  @override
  Widget build (BuildContext context){
    return Container(
        child :
        Text(questext,
        style : TextStyle(
          fontSize: 20 ,
        ),),
    );
  }
}