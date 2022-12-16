// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../styles.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy'),
      ),
      body: Container(
        color: Colors.lightGreenAccent.shade200,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox( height:20,),
              Text(
                'Who named Mahatma Gandhi as the Father of the Nation? ',
                style: questionTextStyle,
              ),
              Divider(thickness: 2,),
              Expanded(
                flex: 3,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Jawahar Lal Nehru',
                        style: answerTextStyle,
                      ),
                      Text(
                        'Sardar Patel',
                        style: answerTextStyle,
                      ),
                      Text(
                        'Subhash Chandra Bose',
                        style: answerTextStyle,
                      ),
                      Text(
                        'Ravindra Nath Tagore',
                        style: answerTextStyle,
                      ),
                    ]),
              ),
              Expanded(
                flex:2,
                child:Text(''),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "<<",
                    style: navigationTextStyle,
                  ),
                  Text(
                    "2 of 5",
                    style: navigationTextStyle,
                  ),
                  Text(
                    ">>",
                    style: navigationTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
