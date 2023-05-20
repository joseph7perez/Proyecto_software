import 'package:worki/models/models.dart';

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