


// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color:Colors.white,
        padding:EdgeInsets.only(left:10),
        child: SafeArea(
          child: Text('Hello Material App in safe area',
            style: TextStyle(
              fontSize:20,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }

}


