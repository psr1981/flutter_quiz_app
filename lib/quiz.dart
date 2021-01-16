import 'package:first_app/question.dart';
import "package:flutter/material.dart";

class quiz extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

      var questions = [
        { "question" : "What is your favorite color ? ", "answers" : [ "red","green","yellow","blue"] },
        { "question" : "what is your favorite food ? ", "answers" : [ "pizza", "burger","dal","mix veg"]}
      ];

      return Scaffold(
        appBar: AppBar( title: Text("Quiz") ),
        body: Padding (
          padding:EdgeInsets.only(top:10),
          child: Center (
            child: question(questions)
          )
        )
      );
  }
}