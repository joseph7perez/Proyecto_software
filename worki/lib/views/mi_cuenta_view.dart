import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/theme/app_theme.dart';

class MiCuentaView extends StatelessWidget {
  
  const MiCuentaView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final UsuarioModel usuario = ModalRoute.of(context)?.settings.arguments as UsuarioModel;

    print('${usuario.informacionPersonal.nombre} ${usuario.informacionPersonal.apellidos}');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FadeInImage(
                placeholder: const AssetImage('assets/imgs/foto_perfil_defecto.jpg'),
                image: NetworkImage(
                  usuario.informacionWorki.fotoPerfil ??
                  'https://thumbs.dreamstime.com/b/usuario-de-medios-sociales-vectorial-icono-perfil-avatar-predeterminado-retrato-176256935.jpg'
                ),
                width: 160,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 60,),
            Text('INFORMACION PERSONAL'),
            Text('Nombre: ${usuario.informacionPersonal.nombre}'),
            Text('Apellidos: ${usuario.informacionPersonal.apellidos}'),
            Text('Correo: ${usuario.informacionPersonal.correo}'),
            Text('Lugar de residencia: ${usuario.informacionPersonal.lugarResidencia}'),
            SizedBox(height: 60,),
            Text('INFORMACION WORKI'),
            Text('Arroba: ${usuario.informacionWorki.arroba}'),
            Text('Sectores: ${usuario.informacionWorki.sectores}'),
            SizedBox(height: 60,),
            TextButton(
              onPressed:  () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: AppTheme.createCardShape(radio: 15, color: AppTheme.primaryColor),
                child: Text('Cerrar sesion')
              )
            )
          ],
        ),
      ),
      //bottomNavigationBar: BarraNavegacionPrincipal(),
    );
  }
}