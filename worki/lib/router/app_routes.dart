
import 'package:components/models/models.dart';
import 'package:components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initialRoute = "/home";

  static final menuOptions = <MenuOption>[
    MenuOption(route: '/home', name: 'Casita', screen: const HomeScreen(), icon: Icons.home_filled),
    MenuOption(route: '/listview1', name: 'Lista 1', screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(route: '/listview2', name: 'Lista 2', screen: const ListView2Screen(), icon: Icons.line_style),
    MenuOption(route: '/alert', name: 'Alertas', screen: const AlertScreen(), icon: Icons.taxi_alert_outlined),
    MenuOption(route: '/card', name: 'Cartas', screen: const CardScreen(), icon: Icons.card_giftcard),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for(final MenuOption option in menuOptions){
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }
  
  static Route<dynamic>? onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: (context) => const HomeScreen(),);
  }
}
