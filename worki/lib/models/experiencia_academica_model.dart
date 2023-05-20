import 'package:worki/models/models.dart';

class ExperienciaAcademicaModel extends ExperienciaModel{
  String titulo;
  String disciplinaAcademica;

  ExperienciaAcademicaModel({
    required super.institucion,
    required super.fechaInicio,
    required super.aptitudes,
    super.fechaFinal,
    required this.disciplinaAcademica,
    required this.titulo,
  });

}