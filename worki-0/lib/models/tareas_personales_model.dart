import 'package:components/models/tarea_model.dart';

class TareasPersonalesModel{
  List<TareaModel>? tareasCreadas;
  List<TareaModel>? tareasAceptadas;
  List<TareaModel>? tareasGuardadas;

  TareasPersonalesModel({
    this.tareasAceptadas,
    this.tareasCreadas,
    this.tareasGuardadas,
  });
}