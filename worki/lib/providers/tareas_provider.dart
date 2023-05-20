import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';

class TareasProvider extends ChangeNotifier{
  Map<String, TareaModel> tareas = {};

  void _generarTareas(){
    tareas.addAll(
      {
        '10' : TareaModel(
          codigo: '10', 
          creador: 'Josep', 
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
        ),
      }
    );
  }

  TareasProvider(){
    _generarTareas();
    print(tareas);
  }
}