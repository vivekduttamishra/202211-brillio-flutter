
import 'package:flutter/material.dart';

import '../services/quiz.dart';

 // ignore_for_file: prefer_const_constructors


class ResultScreen extends StatelessWidget{
  final Function navigate;
  Quiz quiz;

  ResultScreen({required this.quiz,required this.navigate, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    



    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.question_answer),
        title: Text('Result'),
        actions:[
          IconButton(
            onPressed:(){ navigate('home');},
           
            icon:Icon(Icons.home,
            ),
          )
        ]
      ),
      body:Center(
        child:Text('Total Questions: ${quiz.totalQuestions}, Total Answered: ${quiz.totalCorrectAnswered}',
        ),
      
      ),

    );
  }


}