// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, curly_braces_in_flow_control_structures, avoid_print
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/answer-panel.dart';
import '../components/navigation-panel.dart';
import '../components/question-panel.dart';
import '../data/questions.dart';
import '../model/question.dart';
import '../services/quiz.dart';
import '../styles.dart';

class QuestionScreen extends StatefulWidget {
  Quiz quiz;
  Function navigate;

  QuestionScreen({required this.quiz,required this.navigate}) {
    // quiz = Quiz(questions);
    // quiz.start(5);
  }

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

 
  
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy'),
        leading: Icon(Icons.question_answer),
        actions: [
          IconButton(onPressed: (){
            widget.navigate('result');
          }, 
          icon: Icon(Icons.outlined_flag)
          ),
        ],
      ),
      body: Container(
        color: screenColor,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: QuestionPanel(
                widget.quiz.selectedQuestion,
                onAnswerSelected:(int answerIndex){
                  print('answer selected is $answerIndex');
                  setState((){
                    widget.quiz.addResponse(widget.quiz.currentIndex, answerIndex);
                    while(widget.quiz.selectedQuestion.isAnswered && widget.quiz.currentIndex<widget.quiz.totalQuestions)
                      widget.quiz.next();
                  });
                }  
              )),
              NavigationPanel(
                widget.quiz.currentIndex,
                widget.quiz.totalQuestions,
                onNavigate: (index) {
                  setState((){
                    widget.quiz.select(index);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
