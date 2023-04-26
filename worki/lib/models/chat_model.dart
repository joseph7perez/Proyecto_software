import 'models.dart';

class ChatModel{
  List<Usuario> miembros;
  List<MensajeModel> mensajes;
  String? fotoGrupal; //url

  ChatModel({
    required this.miembros,
    required this.mensajes,
    this.fotoGrupal
  })
}