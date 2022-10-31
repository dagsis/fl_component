import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0
      ),
      textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(foregroundColor: primary)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: primary ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: StadiumBorder(),
        elevation: 0
        )
      ),
    inputDecorationTheme: InputDecorationTheme(
       floatingLabelStyle: TextStyle(
         color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10.00)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10.00)),
      ),
      border:  OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10.00)),
      ),
    )
  );

  static final ThemeData DarkTheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
          backgroundColor: primary,
          elevation: 0
      ),
    scaffoldBackgroundColor: Colors.black,
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary,
        elevation: 5 )
    )
  );

}