import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

// how to Theme.of(context).colorScheme.secondary
// check active theme Theme.of(context).brightness == Brightness.dark? Theme.of(context).colorScheme.primary: Colors.white,

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(

    background: Colors.white,
    primary: Color.fromRGBO(200, 226, 241, 1),
    secondary: Color.fromRGBO(32, 91, 125, 1),
    // tertiary: Colors.white
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.getFont('Lato'),
    bodyMedium: GoogleFonts.getFont('Lato'),
    bodyLarge: GoogleFonts.getFont('Lato'),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  cardTheme: const CardTheme(
    color: Color.fromRGBO(252, 249, 249, 0.1),
    // shadowColor: Colors.transparent,
    elevation: 0,
  ),
  colorScheme: const ColorScheme.dark(
    background: Color.fromRGBO(6, 27, 39, 1),
    // primary: Color.fromRGBO(32, 91, 125, 1),
    primary: Color.fromRGBO(16, 51, 71, 1),
    secondary: Color.fromRGBO(200, 226, 241, 1),
    // tertiary: Color.fromRGBO(200, 226, 241, 1)
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.getFont('Lato'),
    bodyMedium: GoogleFonts.getFont('Lato'),
    bodyLarge: GoogleFonts.getFont('Lato'),
  ).apply(
    bodyColor: Colors.white,
  ),
);
