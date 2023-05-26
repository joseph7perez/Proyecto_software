import 'package:worki/models/models.dart';

class BuzonModel{
  List<MovimientoModel>? movimientos;
  List<MisionModel>? misiones;
  List<NotificacionModel>? notificaciones;
  List<ChatModel>? chats;

  BuzonModel({
    this.movimientos,
    this.misiones,
    this.notificaciones,
    this.chats,
  });
}