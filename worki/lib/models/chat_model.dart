import 'mensaje_model.dart';

class ChatModel{
  List<String> miembros;
  List<MensajeModel> mensajes;
  String fotoPerfil;
  String nombre;
  Map<String,String> roles;

  ChatModel({
    required this.miembros,
    required this.mensajes,
    required this.fotoPerfil,
    required this.nombre,
    required this.roles,
  });
}