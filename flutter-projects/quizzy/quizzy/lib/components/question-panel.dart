import 'package:flutter/material.dart';

import '../model/question.dart';
import '../styles.dart';
import 'answer-panel.dart';

class QuestionPanel extends StatelessWidget {
  final Question question;
  final Function onAnswerSelected;

  const QuestionPanel(this.question, {Key? key, required this.onAnswerSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Padding(
          padding:EdgeInsets.only(top:20,),
          child: Text(
            question.question,
            style: questionTextStyle,
          ),
        ),
        // ignore: prefer_const_constructors
        Divider(
          thickness: 2,
        ),
        SizedBox(height: 40,),
        AnswerPanel(question, onAnswerSelected:onAnswerSelected),
      ],
    );
  }
}
