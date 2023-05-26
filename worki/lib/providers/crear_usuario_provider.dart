import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/providers/providers.dart';

class CrearUsuarioProvider extends ChangeNotifier{
  InformacionPersonalModel? _informacionPersonal;
  InformacionWorkiModel? _informacionWorki;

  set informacionPersonal(InformacionPersonalModel infoPersonal){
    _informacionPersonal = infoPersonal;
  }

  set informacionWorki(InformacionWorkiModel infoWorki){
    _informacionWorki = infoWorki;
  }

  UsuarioModel crearUsuario(BuildContext context){
    final UsuariosProvider usuariosProvider = Provider.of<UsuariosProvider>(context, listen: false);
    UsuarioModel usuario = UsuarioModel(
      informacionPersonal: _informacionPersonal!, 
      informacionWorki: _informacionWorki!,
    );
    print('${usuario.informacionWorki.arroba} creado');
    usuariosProvider.crearUsuario(usuario);
    return usuario;
  }
}