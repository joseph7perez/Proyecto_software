import 'package:worki/models/models.dart';

class TareaModel{
  String codigo;
  String creador;
  String estado;
  List<String>? postulados;
  CalificacionModel calificacion;
  String empleado;
  String titulo;
  List<String> sectores;
  double presupuesto;
  double rankMinimo;
  List<String> requerimientos;
  String tipoUbicacion;
  UbicacionModel? ubicacion;
  String fechaPlazo;

  TareaModel({
    required this.codigo,
    required this.creador,
    required this.estado,
    required this.postulados,
    required this.calificacion,
    required this.empleado,
    required this.titulo,
    required this.sectores,
    required this.presupuesto,
    required this.rankMinimo,
    required this.tipoUbicacion,
    required this.fechaPlazo,
    required this.requerimientos,
    this.ubicacion,
  });
}