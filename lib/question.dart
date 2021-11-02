import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(
          color: Colors.pink,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          shadows: [
            Shadow(color: Colors.green, offset: Offset(10, 5), blurRadius: 5)
          ]),
    );
  }
}
