// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/answer-panel.dart';
import '../components/navigation-panel.dart';
import '../data/questions.dart';
import '../model/question.dart';
import '../services/quiz.dart';
import '../styles.dart';

class QuestionScreen extends StatelessWidget {

  

  late Quiz quiz;
  
  
  QuestionScreen(){
    quiz= Quiz(questions);
    quiz.start(5);
    
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy'),
      ),
      body: Container(
        color: screenColor,
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
                quiz.selectedQuestion.question,
                style: questionTextStyle,
              ),
              Divider(
                thickness: 2,
              ),
              Expanded(
                flex: 3,
                child: AnswerPanel(quiz.selectedQuestion)
              ),
              Expanded(
                flex: 2,
                child: Text(''),
              ),
              NavigationPanel(
                quiz.currentIndex, 
                quiz.totalQuestions,
                onNavigate: (index){
                  print('navigating to $index');
                },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
