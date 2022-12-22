import 'package:flutter/material.dart';
import 'package:quizz2/components/info_line.dart';

import '../model/question.dart';
import '../services/quiz.dart';
import '../styles.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class ResultScreen extends StatelessWidget {
  final Function navigate;
  Quiz quiz;

  ResultScreen({required this.quiz, required this.navigate, Key? key})
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
                navigate('home');
              },
              icon: Icon(
                Icons.home,
              ),
            )
          ]),
      body: Container(
        color: screenColor,
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Quiz Result",
              textAlign: TextAlign.center,
              style: headingText,
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
            Divider(thickness: 2,),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  ...questionReport(),
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }

  generateQuestionReport(Question question, int index) {
    var report = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [],
    );
    report.children.add(Padding(
      padding: const EdgeInsets.only(bottom:5.0),
      child: Text(
        '$index. ${question.question}',
        style: reportQuestion,
      ),
    ));

    if (question.isCorrectAnswer) {
      report.children.add(Padding(
        padding: const EdgeInsets.only(bottom:10.0),
        child: Text(
          'You correctly answered: ${question.correctAnswer}',
          style: TextStyle(
            fontSize: 18,
            color: successColor,
          ),
        ),
      ));
    } else {
      var text='Correct answer is "${question.correctAnswer}".';
      if(question.isAnswered) {
        text+='You answered "${question.givenAnswer}';
      } else{
        text+="You didn't answer";
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

  questionReport() {
    var report = [];
    int index=0;
    for (var question in quiz.questions) {
      index++;
      report.add(generateQuestionReport(question,index));
    }
    return report;
  }
}
