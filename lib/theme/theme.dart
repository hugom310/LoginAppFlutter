import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get ligthTheme {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.pink,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.pink,
    );
  }
}
