import 'package:first_app/answerButton.dart';
import "package:flutter/material.dart";

class question extends StatefulWidget {
  var _questions;

  // constructor
  question(this._questions);

  @override
    _questionState createState() => _questionState(this._questions);
}

// state
class _questionState extends State<question> {
  var _questions;
  int _questionIndex=0;

  // constructor
  _questionState(this._questions);

  // answer button handler
  void answerPressed(index) {
    print("answer pressed $index");
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
      if (_questionIndex == _questions.length) {
        return Text("Quiz finished");
      }
      else {
        var _question = _questions[_questionIndex];

        return Column(
          children: [
            Text(_question["question"]),
            answerButton(_question["answers"][0], () => answerPressed(0)),
            answerButton(_question["answers"][1], () => answerPressed(1)),
            answerButton(_question["answers"][2], () => answerPressed(2)),
            answerButton(_question["answers"][3], () => answerPressed(3)),
          ],
        );
      }
  }
}