import 'package:worki/models/models.dart';

class TareaModel{
  String codigo;
  String creador;
  String estado;
  List<String>? postulados;
  CalificacionModel? calificacion;
  String? empleado;
  String titulo;
  String? descripcion;
  List<String> sectores;
  double presupuesto;
  double rankMinimo;
  List<String> requerimientos;
  String tipoUbicacion;
  String ubicacion;
  String fechaPlazo;
  String? urlImagen;

  TareaModel({
    required this.codigo,
    required this.creador,
    required this.estado,
    this.postulados,
    this.calificacion,
    this.empleado,
    required this.titulo,
    this.descripcion,
    required this.sectores,
    required this.presupuesto,
    required this.rankMinimo,
    required this.requerimientos,
    required this.tipoUbicacion,
    required this.ubicacion,
    required this.fechaPlazo,
    this.urlImagen,
  });
}