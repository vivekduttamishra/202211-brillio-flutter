// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

import '../model/question.dart';
import '../styles.dart';

class AnswerPanel extends StatefulWidget {
  Question question;

  AnswerPanel(this.question, {Key? key}) : super(key: key);

  @override
  State<AnswerPanel> createState() => _AnswerPanelState();
}

class _AnswerPanelState extends State<AnswerPanel> {
  @override
  Widget build(BuildContext context) {

    

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: [
        ...widget.question.answers.asMap().entries.map((entry) {
          var answer=entry.value;
          var index=entry.key;
          
          var color=Colors.transparent;
          if(index==widget.question.givenAnswerIndex){
            if(widget.question.isCorrectAnswer)
              color=successColor;
            else
              color=errorColor;
          }

          var  clickHandler= widget.question.givenAnswerIndex!=null
                  ?null     //disable button click if answer is given (!=null)
                  : () { 
              
              setState((){
                widget.question.givenAnswerIndex=index;
              });
            };



          return OutlinedButton(
            onPressed:clickHandler,
            style: OutlinedButton.styleFrom(backgroundColor:color),
            
            child: Text(
              answer,
              style: answerTextStyle,
              textAlign: TextAlign.center,
            ),
            
          );
        }).toList()
      ],
    );
  }
}
