

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        leading: Icon(
          Icons.favorite,
          //color:Colors.pink,
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: Text(''),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
          print('Action Button Pressed');
        },
        child: Icon(Icons.sports_score),
      ),
    );
  }
}