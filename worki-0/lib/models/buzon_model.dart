import 'movimiento_model.dart';
import 'mision_model.dart';
import 'notificacion_model.dart';
import 'chat_model.dart';

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