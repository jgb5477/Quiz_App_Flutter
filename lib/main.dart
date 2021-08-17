import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex=0;
  void _reset(){
    setState(() {
      _questionIndex=0;
    });
  }
  void _question() {
    if ( _questions.length > _questionIndex) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }
    else {
      print('Game Over');
    }
  }
  var _questions=[
  {'questionTxt':'Which of the Following is Animal?',
    'answers':['Dog','Sparrow','Parrot','Crow'],},
  {'questionTxt':'Which of the Following is Bird?',
    'answers': ['Dog','Cow','Parrot','Cat'],
  },
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
            title :Text('Quiz App'),
            centerTitle: true,
        ),
        body: _questions.length > _questionIndex ?
        Quiz(
            questions: _questions,
            answerQuestion: _question,
          questionIndex: _questionIndex
        ): Result(_reset),
    ),
    );
  }
}

