import 'package:flutter/material.dart';
import 'package:quizz2/screens/question-screen.dart';


import '../services/quiz.dart';
import '../styles.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class HomeScreen extends StatelessWidget {

  Quiz quiz;
  static const String routeName="/";
  
  HomeScreen({required this.quiz,Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz02.png',
              //width: 200,
            ),
            Text(
              'Welcome to Quizzy',
              style: homeScreenTitle,
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                quiz.start(10);
                //navigate("quiz");
                Navigator.of(context).pushNamed(QuestionScreen.routeName);
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
