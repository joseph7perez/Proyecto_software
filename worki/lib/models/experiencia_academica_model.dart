import 'package:components/models/experiencia_model.dart';

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