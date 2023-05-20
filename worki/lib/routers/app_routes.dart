import 'package:flutter/material.dart';

class AppRoutes{
  static const String initialRoute = '/login';

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    //appRoutes.addAll({ 'login' : (context) => const  LoginScreen()});
    return appRoutes;
  }
}