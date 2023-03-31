
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/screens/screens.dart';


class AppRoutes{
  static const initialRoute = "/bienvenida";

  static final menuOptions = <MenuOption>[
    MenuOption(route: "/bienvenida", name: "Bienvenida", screen: const BienvenidaScreen(), icon: Icons.wallet_travel),
    MenuOption(route: "/crear_cuenta", name: "Crear Cuenta", screen: const CrearCuentaScreen(), icon: Icons.person_4_outlined),
    MenuOption(route: "/iniciar_sesion", name: "Iniciar Sesion", screen: const IniciarSesionScreen(), icon: Icons.login_outlined),
    
  ];
  
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for(final option in menuOptions){
      appRoutes.addAll({option.route : (context) => option.screen,});
    }
    return appRoutes;
  }

  /* 
  static Map<String, Widget Function(BuildContext)> routes = {
    "/bienvenida" : (context) => const BienvenidaScreen(),
    "/crear_cuenta" : (context) => const CrearCuentaScreen(),
    "/iniciar_sesion" : (context) => const IniciarSesionScreen(),
  }; */

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const BienvenidaScreen(),
    );
  }
}