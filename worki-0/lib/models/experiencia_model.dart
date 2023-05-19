abstract class ExperienciaModel{
  String institucion;
  String fechaInicio;
  String? fechaFinal;
  List<String> aptitudes;

  ExperienciaModel({
    required this.institucion,
    required this.fechaInicio,
    required this.aptitudes,
    this.fechaFinal
  });
}