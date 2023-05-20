import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/widgets/widgets.dart';

class NotificacionesView extends StatelessWidget {
  
  const NotificacionesView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final UsuarioModel usuario = ModalRoute.of(context)?.settings.arguments as UsuarioModel;

    print('${usuario.informacionPersonal.nombre} ${usuario.informacionPersonal.apellidos}');
    return Scaffold(
      body: Center(
        child: Text('Notis'),
        //Text('${usuario.informacionPersonal.nombre} ${usuario.informacionPersonal.apellidos}'),
      ),
      bottomNavigationBar: BarraNavegacionPrincipal(),
    );
  }
}