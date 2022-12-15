

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        leading: Icon(
          Icons.favorite,
          //color:Colors.pink,
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: Text('Welcome to Flutter!'),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  
          print('Action Button Pressed');
        },
        child: Icon(Icons.contact_support),
      ),
    );
  }
}