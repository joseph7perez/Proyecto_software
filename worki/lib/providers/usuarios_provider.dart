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

  bool existeUsuario(String usuario){
    return usuarios.containsKey(usuario);
  }

  UsuarioModel obtenerUsuario(String usuario){
    return usuarios[usuario]!;
  }

  void crearUsuario(UsuarioModel usuario){
    usuarios[usuario.informacionWorki.arroba]  = usuario;
  }

  void _generarUsuarios(){
    usuarios.addAll({
      '@aleal' : UsuarioModel(
        informacionPersonal: InformacionPersonalModel(
          nombre: 'David', 
          apellidos: 'Leal', 
          correo: 'aleal', 
          celular: 3012345678,
          fechaNacimiento: '11/12/2004', 
          genero: 'Masculino', 
          cedula: 1023456789, 
          lugarResidencia: 'Bogota',
        ), 
        informacionWorki: InformacionWorkiModel(
          arroba: '@aleal', 
          password: 'aleal',
          sectores: ['Desarrollo Movil'],
          fotoPerfil: 'https://cdn.autobild.es/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2016/09/569465-whatsapp-que-tus-contactos-ponen-rana-perfil.jpg?itok=tpvHWpeZ',
        ),
      ),

      '@majo' : UsuarioModel(
        informacionPersonal: InformacionPersonalModel(
          nombre: 'Maria Jose', 
          apellidos: 'Castro', 
          correo: 'majo', 
          celular: 3195389210,
          fechaNacimiento: '07/02/2003', 
          genero: 'Femenino', 
          cedula: 1023456788, 
          lugarResidencia: 'Bogota',
        ), 
        informacionWorki: InformacionWorkiModel(
          arroba: '@majo', 
          password: 'majo',
          sectores: ['Arquitecta'],
          fotoPerfil: 'https://i.pinimg.com/564x/87/40/ea/8740eab500549a7539ad5bafeb6d69fd.jpg',
        ),
      ),

      '@joseph' : UsuarioModel(
        informacionPersonal: InformacionPersonalModel(
          nombre: 'Joseph', 
          apellidos: 'Perez', 
          correo: 'joseph', 
          celular: 3185240471, 
          fechaNacimiento: '15/03/2003', 
          genero: 'Masculino', 
          cedula: 1023456781, 
          lugarResidencia: 'Bogota',
        ), 
        informacionWorki: InformacionWorkiModel(
          arroba: '@joseph', 
          password: 'joseph',
          sectores: ['Comerciante'],
          fotoPerfil: 'https://falabella.scene7.com/is/image/FalabellaCO/5369705_1?wid=1500&hei=1500&qlt=70',
        ),
      ),
    });
  }

  UsuariosProvider(){
    _generarUsuarios();
    print(usuarios);
  }
}