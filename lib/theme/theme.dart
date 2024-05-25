import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(

    background: Colors.white,
    primary: Color.fromRGBO(200, 226, 241, 1),
    secondary: Color.fromRGBO(32, 91, 125, 1),
    // tertiary: Colors.white
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Color.fromRGBO(6, 27, 39, 1),
    // primary: Color.fromRGBO(32, 91, 125, 1),
    primary: Color.fromRGBO(16, 51, 71, 1),
    secondary: Color.fromRGBO(200, 226, 241, 1),
    // tertiary: Color.fromRGBO(200, 226, 241, 1)
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(),
    bodyMedium: TextStyle(),
    bodyLarge: TextStyle(),
  ).apply(
    bodyColor: Colors.white,
  ),
);
