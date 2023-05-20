import 'package:flutter/material.dart';
import 'package:worki/screens/screens.dart';

class AppRoutes{
  static const String initialRoute = '/login';

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'login' : (context) => const  LoginScreen()});
    appRoutes.addAll({ 'sign_up' : (context) => const  SignUpScreen()});
    appRoutes.addAll({ 'tareas_disponibles' : (context) => const  TareasDisponiblesScreen()});
    return appRoutes;
  }
}