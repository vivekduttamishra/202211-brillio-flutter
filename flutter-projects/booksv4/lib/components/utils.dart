// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../const.dart';

toast(context, text, {Color? backgroundColor,Color? color,align=TextAlign.center,TextStyle? style}) {
 
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
       text,
       
       textAlign:align,
       style:style?? TextStyle( fontWeight: FontWeight.bold,color: color??onPrimaryColor,),
      ),
      backgroundColor: backgroundColor??primaryColor,
    ),
  );
}
