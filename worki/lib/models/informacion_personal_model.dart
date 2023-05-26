import 'package:worki/models/models.dart';

class InformacionPersonalModel{
  String nombre;
  String apellidos;
  String correo;
  int celular;
  String fechaNacimiento;
  String genero;
  String lugarResidencia;
  int cedula;

  InformacionPersonalModel({
    required this.nombre,
    required this.apellidos,
    required this.correo,
    required this.celular,
    required this.fechaNacimiento,
    required this.genero,
    required this.cedula,
    required this.lugarResidencia,
  });
}