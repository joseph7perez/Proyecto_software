import 'package:components/models/buzon_model.dart';
import 'package:components/models/experiencia_academica_model.dart';
import 'package:components/models/experiencia_laboral_model.dart';
import 'package:components/models/informacion_personal_model.dart';
import 'package:components/models/informacion_worki_model.dart';

class UsuarioModel{
  InformacionPersonalModel informacionPersonal;
  InformacionWorkiModel informacionWorki;
  List<ExperienciaAcademicaModel> historiaAcademica;
  List<ExperienciaLaboralModel> historiaLaboral;
  String? codigoRecuperacion;
  BuzonModel buzon;

  UsuarioModel({
    required this.informacionPersonal,
    required this.informacionWorki,
    required this.historiaAcademica,
    required this.historiaLaboral,
    required this.buzon,
  });
}