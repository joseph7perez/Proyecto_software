import 'package:worki/models/models.dart';

class ExperienciaLaboralModel extends ExperienciaModel{
  String cargo;
  String tipoEmpleo;
  String tipoUbicacion;
  List<String> ubicacion;
  String sector;

  ExperienciaLaboralModel({
    required super.institucion,
    required super.fechaInicio,
    required super.aptitudes,
    super.fechaFinal,
    required this.cargo,
    required this.sector,
    required this.tipoEmpleo,
    required this.tipoUbicacion,
    required this.ubicacion,
  });

}