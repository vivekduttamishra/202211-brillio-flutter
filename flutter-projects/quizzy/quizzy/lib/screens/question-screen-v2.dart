// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/navigation-panel.dart';
import '../model/question.dart';
import '../styles.dart';

class QuestionScreen extends StatelessWidget {

  QuestionScreen({Key? key}) : super(key: key);

  final Question question = Question(
      'Who named Mahatma Gandhi as the Father of the Nation? ',
      [
        'Jawahar Lal Nehru',
        'Sardar Patel',
        'Subhash Chandra Bose',
        'Ravindra Nath Tagore',
      ],
      2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy'),
      ),
      body: Container(
        color: Colors.lightGreenAccent.shade200,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                question.question,
                style: questionTextStyle,
              ),
              Divider(
                thickness: 2,
              ),
              Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        question.answers[0],
                        style: answerTextStyle,
                      ),
                      Text(
                        question.answers[1],
                        style: answerTextStyle,
                      ),
                      Text(
                        question.answers[2],
                        style: answerTextStyle,
                      ),
                      Text(
                        question.answers[3],
                        style: answerTextStyle,
                      ),
                    ]),
              ),
              Expanded(
                flex: 2,
                child: Text(''),
              ),
              NavigationPanel(1, 5),
            ],
          ),
        ),
      ),
    );
  }
}
