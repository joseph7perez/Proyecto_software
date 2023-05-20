import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';

class UsuariosProvider extends ChangeNotifier{
  Map<String, UsuarioModel> usuarios = {};

  void _generarUsuarios(){
    usuarios.addAll(
      {
        'aleal' : UsuarioModel(
          informacionPersonal: InformacionPersonalModel(
            nombre: 'David', 
            apellidos: 'Leal', 
            correo: 'aleal', 
            celular: NumeroCelularModel(
              extension: 57, 
              numero: 3012345678,
            ), 
            fechaNacimiento: '11/12/2004', 
            genero: 'Masculino', 
            cedula: 1023456789, 
            lugarResidencia: 'Bogota',
          ), 
          informacionWorki: InformacionWorkiModel(
            arroba: 'lealuski', 
            password: 'lealuski',
          ),
        ),
      }
    );
  }

  UsuariosProvider(){
    _generarUsuarios();
    print(usuarios);
  }
}