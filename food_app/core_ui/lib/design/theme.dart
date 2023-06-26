import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light()
      .copyWith(primary: const Color.fromRGBO(238, 167, 52, 1)),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 37,
        fontWeight: FontWeight.w700,
        color: Colors.black),
    titleMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Colors.black),
    bodyMedium: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      letterSpacing: 0.8,
      color: Color.fromARGB(255, 58, 58, 58),
    ),
    labelLarge: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      letterSpacing: 0.8,
      color: Color.fromRGBO(255, 255, 255, 1),
    ),
  ),
);
