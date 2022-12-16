// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../styles.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy'),
      ),
      body: Container(
        color: Colors.lightGreenAccent.shade200,
        width: double.infinity,
        padding:EdgeInsets.all(10),
        child: Column(
          
          children: [
            Text(
              'Question ',
              style: questionTextStyle,
            ),
            Text(
              'Answer 1',
              style: answerTextStyle,
            ),
            Text(
              'Answer 2 is a large answer',
              style: answerTextStyle,
            ),
            Text(
              'Answer 3',
              style: answerTextStyle,
            ),
            Text(
              'Answer 4',
              style: answerTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
