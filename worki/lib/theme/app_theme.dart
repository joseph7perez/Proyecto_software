import 'package:flutter/material.dart';

class AppTheme{
  //Color principal
  static const Color primaryColor = royalBlue;
  static const Color secundaryColor = graySoft;
  static const Color secundaryColorTransparent = graySoftTransparent;

  //Colores definidos
  static const Color royalBlue =  Color.fromRGBO(52, 77, 144, 1);
  static const Color graySoft =  Color.fromRGBO(123, 128, 128, 1);
  static const Color graySoftTransparent =  Color.fromRGBO(123, 128, 128, 0.9);
  static const Color blackSteel =  Color.fromRGBO(8, 7, 6,1);
  static const Color whitePaper =  Color.fromRGBO(244, 244, 239,1);
  static const Color transparente =  Color.fromARGB(0, 0, 0, 0);

  //Colores degradados
  static const Color blueDegradentIzq =  Color.fromRGBO(52, 70, 144, 1);
  static const Color blueDegradentDer =  Color.fromRGBO(92, 110, 239, 1);
  static const Color grayDegradentIzq =  Color.fromRGBO(164, 183, 183, 1);
  static const Color grayDegradentDer =  Color.fromRGBO(221, 222, 222, 1);

  static BoxDecoration degradado({required Color color1, required  Color color2}){
    return BoxDecoration(
      gradient: LinearGradient(colors: [color1,color2]),
    );
  } 

  static BoxDecoration createCardShape({required double radio, required Color color}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radio),
    );
  }

  //Logo
  static const String logo = 'assets/icons/logo_circular_pesado.png';

  //Fuente
  static const TextStyle titulo1 = TextStyle(
    fontSize: 25,
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: secundaryColor,
        shape: const StadiumBorder(),
      ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
  );
}