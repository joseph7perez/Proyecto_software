import 'package:flutter/material.dart';
import 'package:worki/screens/screens.dart';

class AppRoutes{
  static const String initialRoute = '/login';

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ '/login' : (context) => LoginScreen()});
    appRoutes.addAll({ '/sign_up' : (context) => const SignUpScreen()});
    appRoutes.addAll({ '/home' : (context) => HomeScreen()});
    appRoutes.addAll({ '/tarea_detallada' : (context) => TareaDetalladaScreen()});
    return appRoutes;
  }
}