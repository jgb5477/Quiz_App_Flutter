import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  final VoidCallback reset;
  Result(this.reset);
  Widget build(BuildContext context) {
    return Center(
        child : Column(
            children :<Widget>[
                Text('Game Over',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                ),

                FlatButton(
                    onPressed: reset ,
                    child:
                    Text('Reset Quiz',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                ),

            ]
        ),

  );
  }
}
