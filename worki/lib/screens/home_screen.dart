import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/views/views.dart';

class HomeScreen extends StatefulWidget {
  
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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

    int itemActual = 0;

  @override
  Widget build(BuildContext context) {

    final UsuarioModel usuario = ModalRoute.of(context)?.settings.arguments as UsuarioModel;
    
    return Scaffold(
      body: IndexedStack(
        index: itemActual,
        children: [
          itemsPrincipales[0].widget,
          itemsPrincipales[1].widget,
          itemsPrincipales[2].widget,
          itemsPrincipales[3].widget,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
