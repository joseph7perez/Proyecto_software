import 'package:worki/models/models.dart';

class InformacionPersonalModel{
  String nombre;
  String apellidos;
  String correo;
  NumeroCelularModel celular;
  String fechaNacimiento;
  String genero;
  UbicacionModel lugarResidencia;
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