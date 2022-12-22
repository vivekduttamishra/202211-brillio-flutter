

// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'package:flutter/material.dart';




final rubyRed=Color(0xFF9B2226);
final rufous=Color(0xFFAE2012);
final rust=Color(0xFFBB3E03);
final alloyOrange=Color(0xFFCA6702);
final orange2=Color(0xFFEE9B00);
final beige=Color(0xFFE9D8A6);
final black2=Color(0xFF001219);
final orangeWeb=Color(0xFFFCA311);
final oxfordBlue=Color(0xFF14213D);
final rust2=Color(0xFF9E2A2B);
final lightYellow=Color(0xFFFFF3B0);


final primaryColor=orangeWeb; //Color(0xFFFA824C);//Color(0xFFB6DC76);
final primaryContrastColor=oxfordBlue;
final onPrimaryColor=oxfordBlue;

final canvasColor=lightYellow; //Color(0x0xFFB6DC76);
final onCanvasColor1=rust;
final onCanvasColor2=oxfordBlue;

final dividerColor=rust;

 MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(color.value, swatch);
  }
