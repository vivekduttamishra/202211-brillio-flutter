// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';

import 'const.dart';
import 'screens/book_add_screen.dart';
import 'screens/book_details_screen.dart';
import 'screens/book_list_screen.dart';

import 'screens/user_login_screen.dart';
import 'screens/user_register_screen.dart';
import 'screens/welcome_screen.dart';
//import 'screens/welcome_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
   
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        WelcomeScreen.routeName: (context)=> WelcomeScreen(),
        BookListScreen.routeName: (context)=> BookListScreen(),
        BookDetailsScreen.routeName: (context)=> BookDetailsScreen(),
        BookAddScreen.routeName: (context)=> BookAddScreen(),
        UserLoginScreen.routeName: (context)=> UserLoginScreen(),
        UserRegisterScreen.routeName: (context)=> UserRegisterScreen(),
      },
      initialRoute: BookListScreen.routeName,
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: primaryColor,
          onPrimary: onPrimaryColor,
          brightness: Brightness.light,
          background: primaryColor,
          error: Colors.red,
          onError: Colors.black,
          onBackground: Colors.white,
          secondary: primaryColor.withAlpha(120),
          onSecondary: onPrimaryColor,
          surface: Color(0xFFFA824C),
          onSurface: Colors.black,
        ),
      
        //primarySwatch:createMaterialColor(primaryColor),
        //primaryColor:Colors.red,
        canvasColor: canvasColor,

        appBarTheme: AppBarTheme(
          // backgroundColor:Theme.of(context).colorScheme.primary,
          //foregroundColor: primaryContrastColor,
          foregroundColor: onPrimaryColor,
          iconTheme: IconThemeData(
            color:onPrimaryColor,
          ),
          actionsIconTheme: IconThemeData(
            color:onPrimaryColor,
            size: 32,
          ),


        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          //backgroundColor: Theme.of(context).colorScheme.primary,
          //foregroundColor: primaryContrastColor,
        ),

        textTheme: ThemeData.light().textTheme.copyWith(
            //This is default Appbar Title
            titleLarge: TextStyle(
              fontSize: 28,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.bold,
            ),
            titleMedium: TextStyle(
              fontSize: 22,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.bold,
            ),
            titleSmall: TextStyle(
              fontSize: 20,
              fontFamily: 'Handlee',
              fontWeight: FontWeight.bold,
            ),
            headlineLarge: TextStyle(
              fontSize: 28,
              fontFamily: 'Mali',
              color:onCanvasColor1,
              fontWeight: FontWeight.bold,
            ),
          
            headlineMedium: TextStyle(
              fontSize: 22,
              fontFamily: 'Mali',
              fontWeight: FontWeight.bold,
            ),
            headlineSmall: TextStyle(
              fontSize: 20,
              fontFamily: 'Mali',
              fontWeight: FontWeight.bold,
            ),
            bodyLarge: TextStyle(
              fontSize: 18,
              fontFamily: 'BadScript',
            ),
            bodyMedium: TextStyle(
              fontSize: 22,
              fontFamily: 'Handlee',
              fontWeight: FontWeight.bold,
              color:onCanvasColor2,
            ),
            bodySmall: TextStyle(
              fontSize: 14,
              fontFamily: 'BadScript',
            )),
      ),
    );
  }
}
