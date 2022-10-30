import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0
      ),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: primary))
  );

  static final ThemeData DarkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
          backgroundColor: primary,
          elevation: 0
      ),
    scaffoldBackgroundColor: Colors.black,
    textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: primary))

  );

}