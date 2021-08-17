import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final VoidCallback selectHandler;
  final String answertxt;
  Answer(this.selectHandler, this.answertxt);

  @override
  Widget build (BuildContext context){
    return Container(
      padding: EdgeInsets.all(10),
      //width: double.infinity,
      child :
      RaisedButton(
        color: Colors.blue,
        child: Text(answertxt),
        onPressed: selectHandler,

      ),
    );
  }
}