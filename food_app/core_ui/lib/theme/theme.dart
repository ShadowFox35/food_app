import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 253, 253, 240),
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
        fontWeight: FontWeight.w700,
        color: Color.fromARGB(255, 58, 58, 58)),
  ),
);
