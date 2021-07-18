import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You are Awesome & Innocent!';
    } else if (resultScore <= 15) {
      resultText = 'Pretty Likeable..!';
    } else if (resultScore <= 20) {
      resultText = 'You are..Strange.?';
    } else {
      resultText = 'You are  so Bad..!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text(
                'Restart Quiz.!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              textColor: Colors.green,
              onPressed: resetHandler),
        ],
      ),
    );
  }
}
