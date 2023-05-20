import 'package:flutter/material.dart';
import 'package:worki/providers/providers.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/views/views.dart';

class BarraNavegacionPrincipal extends StatefulWidget {
  BarraNavegacionPrincipal({
    required this.itemsPrincipales,
    required this.itemProvider,
  });

  final List<ItemPrincipal> itemsPrincipales;
  ItemButtomBarProvider itemProvider;

  @override
  State<BarraNavegacionPrincipal> createState() => _BarraNavegacionPrincipalState(
    itemsPrincipales:itemsPrincipales,
    itemProvider: itemProvider,
  );
}

class _BarraNavegacionPrincipalState extends State<BarraNavegacionPrincipal> {

  final List<ItemPrincipal> itemsPrincipales;
  ItemButtomBarProvider itemProvider;
  _BarraNavegacionPrincipalState({
    required this.itemsPrincipales,
    required this.itemProvider
  }); 

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppTheme.primaryColor,
      selectedItemColor: AppTheme.whitePaper,
      unselectedItemColor: AppTheme.secundaryColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: itemProvider.itemActual,
      onTap: (value) {
        itemProvider.setItemActual(value);
        //itemActual = value;
        print(value);
        setState(() {});
      },
      items: [
        itemsPrincipales[0].bottomNavigationBarItem,
        itemsPrincipales[1].bottomNavigationBarItem,
        itemsPrincipales[2].bottomNavigationBarItem,
        itemsPrincipales[3].bottomNavigationBarItem,
      ]
    );
  }
}

