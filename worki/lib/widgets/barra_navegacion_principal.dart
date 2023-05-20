import 'package:flutter/material.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/views/views.dart';

class BarraNavegacionPrincipal extends StatefulWidget {
  const BarraNavegacionPrincipal({super.key});

  @override
  State<BarraNavegacionPrincipal> createState() => _BarraNavegacionPrincipalState();
}

class _BarraNavegacionPrincipalState extends State<BarraNavegacionPrincipal> {

  int itemActual = 0;

  final itemsPrincipales = [
    ItemPrincipal(
      bottomNavigationBarItem: BottomNavigationBarItem(
        icon: Icon(Icons.notifications_outlined),
        label: 'Notificaciones',
      ),
      widget: NotificacionesView(),
    ),
    ItemPrincipal(
      bottomNavigationBarItem: BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: 'Tareas Disponibles',
      ),
      widget: TareasDisponiblesView(),
    ),
    ItemPrincipal(
      bottomNavigationBarItem: BottomNavigationBarItem(
        icon: Icon(Icons.add_task_outlined),
        label: 'Crear Tarea',
      ),
      widget: TareasDisponiblesView(),
    ),
    ItemPrincipal(
      bottomNavigationBarItem: BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        label: 'Mi cuenta',
      ),
      widget: TareasDisponiblesView(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppTheme.primaryColor,
      selectedItemColor: AppTheme.whitePaper,
      unselectedItemColor: AppTheme.secundaryColor,
      type: BottomNavigationBarType.fixed,
      currentIndex: itemActual,
      onTap: (value) {
        itemActual = value;
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

class ItemPrincipal{
  BottomNavigationBarItem bottomNavigationBarItem;
  Widget widget;

  ItemPrincipal({
    required this.bottomNavigationBarItem,
    required this.widget,
  });
}