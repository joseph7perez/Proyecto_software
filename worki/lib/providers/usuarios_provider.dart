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
          fotoPerfil: 'https://scontent.fbog10-1.fna.fbcdn.net/v/t1.6435-9/116587549_129206498875517_1442075699111814882_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=973b4a&_nc_ohc=_8AZo38KjsMAX9G_88c&_nc_ht=scontent.fbog10-1.fna&oh=00_AfB2vVk0ARTI01nJJPL8qVgu97DG6vCJV3ezB6ggBuuK3A&oe=6497B1A3',
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
          fotoPerfil: 'https://m.media-amazon.com/images/I/81-OZj1Q09L._SL1500_.jpg',
        ),
      ),
    });
  }

  UsuariosProvider(){
    _generarUsuarios();
    print(usuarios);
  }
}