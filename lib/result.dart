import 'package:flutter/material.dart';
import 'package:quiz_demo/all_confetti.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are Fucker!';
    } else if (resultScore <= 12) {
      resultText = 'pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are strange';
    } else {
      resultText = 'you are awesome and innocent';
    }
    return resultText;
  }

  Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return AllConfetti(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: resetHandler,
              child: Text('Restart Quiz'),
              textColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
