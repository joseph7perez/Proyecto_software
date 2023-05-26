import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/providers/providers.dart';

class CrearUsuarioProvider extends ChangeNotifier{
  InformacionPersonalModel? _informacionPersonal;
  InformacionWorkiModel? _informacionWorki;
  List<ExperienciaAcademicaModel>? _historiaAcademica;
  List<ExperienciaLaboralModel>? _historiaLaboral;

  set informacionPersonal(InformacionPersonalModel infoPersonal){
    _informacionPersonal = infoPersonal;
  }

  set informacionWorki(InformacionWorkiModel infoWorki){
    _informacionWorki = infoWorki;
  }

  set historiaAcademica(List<ExperienciaAcademicaModel>? listaHistoriasAcademicas){
    _historiaAcademica = listaHistoriasAcademicas?? [];
  }

  set historiaLaboral(List<ExperienciaLaboralModel>? listaHistoriasLaborales){
    _historiaLaboral = listaHistoriasLaborales?? [];
  }

  void crearUsuario(BuildContext context){
    final UsuariosProvider usuariosProvider = Provider.of<UsuariosProvider>(context);
    UsuarioModel usuario = UsuarioModel(
      informacionPersonal: _informacionPersonal!, 
      informacionWorki: _informacionWorki!,
      historiaAcademica: _historiaAcademica,
      historiaLaboral: _historiaLaboral,
    );
    usuariosProvider.crearUsuario(usuario);
  }
}