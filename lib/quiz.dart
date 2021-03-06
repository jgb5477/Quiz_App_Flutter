import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget{
  final List<Map<String,Object>>questions ;
  final VoidCallback answerQuestion;
  final int questionIndex;
  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex
  });
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Question(questions[questionIndex]['questionTxt']as String,
          ),
          ...(questions[questionIndex]['answers'] as List<String>).map((answer){
            return Answer(answerQuestion, answer);
          }).toList()
        ],
      ),
    );

  }
}
