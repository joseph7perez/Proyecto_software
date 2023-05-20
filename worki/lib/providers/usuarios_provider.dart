import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';

class UsuariosProvider extends ChangeNotifier{
  Map<String, UsuarioModel> usuarios = {};

  bool buscarUsuario(String usuario, String password){
    if(!usuarios.containsKey(usuario)) return false;
    if(usuarios[usuario]!.informacionWorki.password==password){
      return true;
    }
    return false;
  }

  UsuarioModel obtenerUsuario(String usuario){
    return usuarios[usuario]!;
  }

  void _generarUsuarios(){
    usuarios.addAll({
      '@aleal' : UsuarioModel(
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
          arroba: '@aleal', 
          password: 'aleal',
        ),
      ),

      '@majo' : UsuarioModel(
        informacionPersonal: InformacionPersonalModel(
          nombre: 'Maria Jose', 
          apellidos: 'Castro', 
          correo: 'majo', 
          celular: NumeroCelularModel(
            extension: 57, 
            numero: 3195389210,
          ), 
          fechaNacimiento: '07/02/2003', 
          genero: 'Femenino', 
          cedula: 1023456788, 
          lugarResidencia: 'Bogota',
        ), 
        informacionWorki: InformacionWorkiModel(
          arroba: '@majo', 
          password: 'majo',
        ),
      ),

      '@joseph' : UsuarioModel(
        informacionPersonal: InformacionPersonalModel(
          nombre: 'Joseph', 
          apellidos: 'Perez', 
          correo: 'joseph', 
          celular: NumeroCelularModel(
            extension: 57, 
            numero: 3185240471,
          ), 
          fechaNacimiento: '15/03/2003', 
          genero: 'Masculino', 
          cedula: 1023456781, 
          lugarResidencia: 'Bogota',
        ), 
        informacionWorki: InformacionWorkiModel(
          arroba: '@joseph', 
          password: 'joseph',
        ),
      ),
    });
  }

  UsuariosProvider(){
    _generarUsuarios();
    print(usuarios);
  }
}