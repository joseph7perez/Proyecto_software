import 'package:flutter/material.dart';

class AppTheme{
  static const Color primaryColor = Color.fromARGB(214, 22, 69, 222);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(214, 22, 69, 222),
      elevation: 0,
      centerTitle: true,
    ),

    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primaryColor),
    ),
  );
}