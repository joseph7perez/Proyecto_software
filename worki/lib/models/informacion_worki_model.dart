import 'models.dart';

class InformacionWorkiModel{
  String arroba;
  List<String>? sectores;
  String password;
  String? fotoPerfil;
  RankModel rank;
  List<Usuaio> lideres;
  List<Usuaio> seguidores;

  InformacionWorkiModel({
    required this.arroba,
    required this.sectores,
    required this.password,
    required this.fotoPerfil,
    required this.rank,
    required this.lideres,
    required this.seguidores
  });
}