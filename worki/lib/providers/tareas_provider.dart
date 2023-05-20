import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';

class TareasProvider extends ChangeNotifier{
  Map<String, TareaModel> tareas = {};
  List<TareaModel> listaTareas = [];

  TareaModel obtenerTarea(String codigoTarea){
    return tareas[codigoTarea]!;
  }

  void _getListaTareas(){
    listaTareas.clear();
    tareas.forEach((key, value) { listaTareas.add(value); });
  }

  void _generarTareas(){
    tareas.addAll({
      '10' : TareaModel(
        codigo: '10', 
        creador: '@joseph', 
        estado: 'Por hacer', 
        titulo: 'Chef Junior',
        descripcion: 'Para cocinar en casa familiar los fin de semana en hora de almuerzo (11:00am-2:00pm)', 
        sectores: List.generate(1, (index) => 'Gastronomia'), 
        presupuesto: 100000, 
        rankMinimo: 1, 
        requerimientos: List.generate(1, (index) => 'Chef con minimo 3 meses de experiencia, especializacion comida mexicana'),
        tipoUbicacion: 'Presencial', 
        ubicacion: 'Colina Campestre, Bogota', 
        fechaPlazo: '20/05/2023',
        urlImagen: 'https://img.freepik.com/vector-gratis/plantilla-poster-trabajo-chef-diseno-plano_23-2149913730.jpg',
      ),

      '000012' : TareaModel(
        codigo: '000012', 
        creador: '@majo', 
        estado: 'Por hacer', 
        titulo: 'Niñera para niña de 8 años.',
        sectores: List.generate(1, (index) => 'Doméstico'), 
        presupuesto: 120000, 
        rankMinimo: 50, 
        requerimientos: List.generate(1, (index) => 'persona con experiencia cuidando niños, paciente, que sepa cocinar'),
        tipoUbicacion: 'Presencial', 
        ubicacion: 'Fontibon', 
        fechaPlazo: '14/06/2023',
        urlImagen: 'https://edit.org/photos/img/blog/ssd-plantilla-anuncio-ninera-personalizar-online.jpg-840.jpg',
      ),

      '02:55am' : TareaModel(
        codigo: '02:55am', 
        creador: '@aleal', 
        estado: 'Haciendo', 
        titulo: 'Desarrollador Movil.',
        descripcion: 'Para presentar aplicacion llamada worki.',
        sectores: List.generate(1, (index) => 'Desarrollo Movil'), 
        presupuesto: 9999999, 
        rankMinimo: 9999999, 
        requerimientos: List.generate(1, (index) => 'Solo acabalo rapido por favor'),
        tipoUbicacion: 'Presencial', 
        ubicacion: 'CityCampus', 
        fechaPlazo: '20/05/2023',
        urlImagen: 'https://static.vecteezy.com/system/resources/previews/010/430/724/non_2x/app-development-poster-template-layout-mobile-programming-wireless-technology-banner-booklet-leaflet-print-design-with-linear-icons-brochure-page-layout-for-magazines-advertising-flyers-vector.jpg',
      ),
    });
  }

  TareasProvider(){
    _generarTareas();
    _getListaTareas();
    print(tareas);
  }
}