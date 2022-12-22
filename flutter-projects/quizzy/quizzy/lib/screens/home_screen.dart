import 'package:flutter/material.dart';
import 'package:quizzy/styles.dart';

import '../services/quiz.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class HomeScreen extends StatelessWidget {
  final Function navigate;
  Quiz quiz;
  
  HomeScreen({required this.navigate,required this.quiz,Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.question_answer,
              size:150,
              color: Colors.redAccent.shade400,

            ),
            Text(
              'Welcome to Quizzy',
              style: homeScreenTitle,
            ),
            ElevatedButton(
              onPressed: () {
                quiz.start(5);
                navigate("quiz");
              },
              style: ElevatedButton.styleFrom(primary: welcomeScreenColor),
              child: Text('Start Quiz'),
              
            ),
          ],
        ),
      ),
    );
  }
}
