

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

createApp(){
  return Container(
      // alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(
        top: 50,
        left: 10,
      ),
      color: Colors.red,
      child: Text(
        'Hello Flutter World V1',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
}