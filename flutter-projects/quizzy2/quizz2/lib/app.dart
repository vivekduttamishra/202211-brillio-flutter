

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


import 'data/questions.dart';
import 'screens/home_screen.dart';
import 'screens/question-screen.dart';
import 'screens/result_screen.dart';
import 'services/quiz.dart';


class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  String currentScreenName="home";
  late Quiz quiz;

  _AppState() {
    quiz= Quiz(questions);
  }

  

 navigate(screenName){
    setState((){
      currentScreenName=screenName;
    });
  }

  get currentScreen{
    var screenMap={

      "home": () => HomeScreen(navigate:navigate, quiz:quiz),
      "quiz": () => QuestionScreen(navigate:navigate, quiz:quiz),
      "result": () => ResultScreen(navigate:navigate,quiz:quiz),

    };

    return screenMap[currentScreenName]!();
  }

 



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: currentScreen,
    );
  }
}