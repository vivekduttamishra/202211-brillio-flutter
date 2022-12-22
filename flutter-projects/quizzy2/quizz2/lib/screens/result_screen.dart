import 'package:flutter/material.dart';
import 'package:quizz2/components/info_line.dart';
import 'package:quizz2/screens/home_screen.dart';

import '../model/question.dart';
import '../services/quiz.dart';
import '../styles.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class ResultScreen extends StatelessWidget {
  Quiz quiz;
  static const String routeName="/result";
  ResultScreen({required this.quiz,  Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.question_answer),
          title: Text('Result'),
          actions: [
            IconButton(
              onPressed: () {
                //navigate('home');
                Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
              },
              
              icon: Icon(
                Icons.home,
              ),
            )
          ]),
      body: Container(
        //color: screenColor,
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Quiz Result",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Divider(
              thickness: 2,
            ),
            InfoLine(label: "Total Questions", value: quiz.totalQuestions),
            InfoLine(label: "Total Answered", value: quiz.totalAnswered),
            InfoLine(label: "Correct Answer", value: quiz.totalCorrectAnswered),
            SizedBox(
              height: 10,
            ),
            Text(
              'Questions',
              textAlign: TextAlign.center,
              style: headingText,
            ),
            Divider(
              thickness: 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: quiz.questions.length,
                itemBuilder:  (context,index){
                  return QuestionInfo(
                    question: quiz.questions[index], 
                    index: index+1
                    ); 

                }),
              ),
            
          ],
        ),
      ),
    );
  }

 
}

class QuestionInfo extends StatelessWidget {
  final Question question;
  final int index;

  QuestionInfo({required this.question, required this.index, Key? key})
      : super(key: key){
      print('$index . ${question.question} rendered');
  }

  @override
  Widget build(BuildContext context) {
    var report = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [],
    );
    report.children.add(Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Text(
        '$index. ${question.question}',
        style: reportQuestion,
      ),
    ));

    if (question.isCorrectAnswer) {
      report.children.add(Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Text(
          'You correctly answered: ${question.correctAnswer}',
          style: TextStyle(
            fontSize: 18,
            color: successColor,
          ),
        ),
      ));
    } else {
      var text = 'Correct answer is "${question.correctAnswer}".';
      if (question.isAnswered) {
        text += 'You answered "${question.givenAnswer}';
      } else {
        text += "You didn't answer";
      }

      report.children.add(
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: errorColor,
          ),
        ),
      );
    }

    report.children.add(
      Divider(),
    );

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: report,
    );
  }
}
