import "package:flutter/material.dart";

class answerButton extends StatelessWidget {
  String _answerText;
  Function _onAnswerPressed;

  answerButton( this._answerText, this._onAnswerPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed:  _onAnswerPressed, color: Colors.blue, textColor: Colors.white,  child: Text(_answerText));
  }
}