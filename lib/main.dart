import 'package:first_app/quiz.dart';
import "package:flutter/material.dart";

void main() => runApp(myApp());

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp( home : quiz());
  }

}