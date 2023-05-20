import 'package:worki/models/models.dart';

class BuzonModel{
  List<MovimientoModel> movimientos;
  List<MisionModel> misiones;
  List<NotificacionModel> notificaciones;
  List<ChatModel>? chats;

  BuzonModel({
    required this.movimientos,
    required this.misiones,
    required this.notificaciones,
    this.chats,
  });
}