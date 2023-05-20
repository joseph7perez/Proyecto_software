import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/providers/providers.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/widgets/widgets.dart';

class TareasDisponiblesView extends StatelessWidget {
  
  const TareasDisponiblesView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final tareasProvider = Provider.of<TareasProvider>(context);
    final size = MediaQuery.of(context).size;
    final UsuarioModel usuario = ModalRoute.of(context)?.settings.arguments as UsuarioModel;

    return Scaffold(
      backgroundColor: AppTheme.graySoft,
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children:[
            BarraSuperiorTareas(),
            CartaTareaPrincipal(size: size, tareas: tareasProvider.listaTareas,),
          ] 
        ),
      )
    );
  }
}



