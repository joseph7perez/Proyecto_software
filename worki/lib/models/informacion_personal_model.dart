import 'package:components/models/numero_celular_model.dart';
import 'package:components/models/ubicacion_model.dart';

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