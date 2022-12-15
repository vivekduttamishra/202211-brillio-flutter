// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      // alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(
        top: 50,
        left: 10,
      ),
      color: Colors.red,
      child: Text(
        'Hello Flutter World',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    ),
  );
}
