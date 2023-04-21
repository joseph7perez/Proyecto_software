import 'package:flutter/material.dart';

class AppTheme{
  //Color principal
  static const Color primaryColor = royalBlue;
  
  //Colores definidos
  static const Color royalBlue =  Color.fromRGBO(52, 77, 144, 1);
  static const Color bloodOrange =  Color.fromRGBO(231, 85, 44,1);
  static const Color blackSteel =  Color.fromRGBO(8, 7, 6,1);
  static const Color whitePaper =  Color.fromRGBO(244, 244, 239,1);

  //Colores degradados
  static const Color blueDegradentIzq =  Color.fromRGBO(52, 70, 144, 1);
  static const Color blueDegradentDer =  Color.fromRGBO(92, 110, 239, 1);
  static const Color orangeDegradentIzq =  Color.fromRGBO(231, 70, 44,1);
  static const Color orangeDegradentDer =  Color.fromRGBO(231, 110, 44,1);

  //Logo
  static const String logo = 'https://play-lh.googleusercontent.com/mVBNa3n1IAJQtvTiLmkoBWd54wRxflnrJsmhxfOIT2LnzlV7SIx0QG32NbJHVnTQXw';

  //Fuente
  static const TextStyle titulo1 = TextStyle(
    fontSize: 25,
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    /*
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(52, 22, 69, 222),
      elevation: 0,
      centerTitle: true,
    ),

    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primaryColor),
    ),*/
  );
}