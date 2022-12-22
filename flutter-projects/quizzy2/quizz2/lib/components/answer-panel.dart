// ignore_for_file: curly_braces_in_flow_control_structures, must_be_immutable

import 'package:flutter/material.dart';

import '../model/question.dart';
import '../styles.dart';

class AnswerPanel extends StatelessWidget {
  Question question;
  Function onAnswerSelected;
  AnswerPanel(this.question, {required this.onAnswerSelected, Key? key})
   : super(key: key);

 
  @override
  Widget build(BuildContext context) {

    

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [
        ...question.answers.asMap().entries.map((entry) {
          var answer=entry.value;
          var index=entry.key;
          
          var color=Colors.transparent;
          if(index==question.givenAnswerIndex){
            if(question.isCorrectAnswer)
              color=successColor;
            else
              color=errorColor;
          }

          var  clickHandler= question.givenAnswerIndex!=null
                  ?null     //disable button click if answer is given (!=null)
                  : () {
                    onAnswerSelected(index); 
                  };



          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: OutlinedButton(
              onPressed:clickHandler,
              style: OutlinedButton.styleFrom(backgroundColor:color),
              
              child: Text(
                answer,
                style: answerTextStyle,
                textAlign: TextAlign.center,
              ),
              
            ),
          );
        }).toList()
      ],
    );
  }
}
