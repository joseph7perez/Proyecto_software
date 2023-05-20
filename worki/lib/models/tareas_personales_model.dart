import 'package:worki/models/models.dart';

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