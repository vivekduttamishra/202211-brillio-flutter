
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BlankScreen extends StatelessWidget {
  static const routeName="/blank";
  const BlankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Blank Screen'),
        actions:[
          InkWell(
            child:Icon(Icons.save_alt,),
            
            onTap:(){
              
            },
          ),
        ]
      ),
      body: Container(
        height:double.infinity,
        width:double.infinity,
        padding:EdgeInsets.all(10),
        child: Text('Blank Screen'),
      )
    );
  }

}