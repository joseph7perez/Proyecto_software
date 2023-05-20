import 'package:worki/models/models.dart';

class InformacionWorkiModel{
  String arroba;
  String password;
  List<String>? sectores;
  String? fotoPerfil;
  RankModel rank;
  List<String>? lideres;
  List<String>? seguidores;
  TareasPersonalesModel? misTareas;
  List<String>? ultimasBusquedas;

  InformacionWorkiModel({
    required this.arroba,
    required this.password,
    required this.rank,
  });
}