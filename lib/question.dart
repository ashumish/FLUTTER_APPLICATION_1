import 'dart:ui';

import 'package:flutter/material.dart';
//import './main.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
            fontSize: 20, color: Colors.cyan, fontWeight: FontWeight.w900),
        textAlign: TextAlign.center,
      ),
    );
  }
}
