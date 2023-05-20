import 'package:worki/models/models.dart';

class UsuarioModel{
  InformacionPersonalModel informacionPersonal;
  InformacionWorkiModel informacionWorki;
  List<ExperienciaAcademicaModel>? historiaAcademica;
  List<ExperienciaLaboralModel>? historiaLaboral;
  BuzonModel? buzon;

  UsuarioModel({
    required this.informacionPersonal,
    required this.informacionWorki,
    this.historiaAcademica,
    this.historiaLaboral,
    this.buzon,
  });
}