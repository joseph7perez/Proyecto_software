import 'package:components/models/experiencia_model.dart';
import 'package:components/models/ubicacion_model.dart';

class ExperienciaLaboralModel extends ExperienciaModel{
  String cargo;
  String tipoEmpleo;
  String tipoUbicacion;
  List<UbicacionModel> ubicacion;
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