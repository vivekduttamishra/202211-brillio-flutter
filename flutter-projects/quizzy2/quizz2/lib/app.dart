

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

  late Quiz quiz;

  _AppState() {
    quiz= Quiz(questions);
  }

  

  // String currentScreenName="home";
  // navigate(screenName){
  //   setState((){
  //     currentScreenName=screenName;
  //   });
  // }

  // get currentScreen{
  //   var screenMap={

  //     "home": () => HomeScreen(navigate:navigate, quiz:quiz),
  //     "quiz": () => QuestionScreen(navigate:navigate, quiz:quiz),
  //     "result": () => ResultScreen(navigate:navigate,quiz:quiz),

  //   };

  //   return screenMap[currentScreenName]!();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: currentScreen,

      routes: {
        HomeScreen.routeName: (context)=> HomeScreen(quiz:quiz),
        QuestionScreen.routeName: (context)=>QuestionScreen(quiz:quiz),
        ResultScreen.routeName:(context)=>ResultScreen(quiz:quiz),
      },
      initialRoute: HomeScreen.routeName,
      theme: ThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.orangeAccent.shade700,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary:Colors.black, 
          background: Colors.transparent, 
          error: Colors.red.shade600,  
          onBackground: Colors.white, 
          onError: Colors.black,
          onSurface: Colors.blue, 
          surface: Colors.white,
        ),
        canvasColor: Colors.limeAccent.shade400,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontFamily: "Nunioto",
            fontWeight: FontWeight.w900,
            fontSize:28,
          ),
           titleMedium: TextStyle(
            fontFamily: "Nunito",
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
            fontSize:25,
          ),
           titleSmall: TextStyle(
            fontFamily: "RubikFade",
            fontSize:20,
          ),
           bodyLarge: TextStyle(
            fontFamily: "Nunito",
            fontSize:18,
          ),
          
           bodyMedium: TextStyle(
            fontFamily: "Nunito",
            fontSize:14,
          ),

          
           bodySmall: TextStyle(
            fontFamily: "Nunito",
            fontSize:12,
          ),
          headlineLarge: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.w900,
            fontSize:22,
          ),
          headlineMedium: TextStyle(
            fontFamily: "Raleway",
            fontSize:18,
          ),
          headlineSmall: TextStyle(
            fontFamily: "Raleway",
            fontSize:14,
          ),

          

        )
      ),

    );
  }
}