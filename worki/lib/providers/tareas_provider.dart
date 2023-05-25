import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';

class TareasProvider extends ChangeNotifier {
  Map<String, TareaModel> tareas = {};
  List<TareaModel> listaTareas = [];

  TareaModel obtenerTarea(String codigoTarea) {
    return tareas[codigoTarea]!;
  }

  void _getListaTareas() {
    listaTareas.clear();
    tareas.forEach((key, value) {
      listaTareas.add(value);
    });
  }

  void _generarTareas() {
    tareas.addAll({
      '10': TareaModel(
        codigo: '10',
        creador: '@joseph',
        estado: 'Por hacer',
        titulo: 'Chef Junior',
        descripcion:
            'Para cocinar en casa familiar los fin de semana en hora de almuerzo (11:00am-2:00pm)',
        sectores: ['Gastronomia'],
        presupuesto: 100000,
        rankMinimo: 1,
        requerimientos: [
          'Chef con minimo 3 meses de experiencia',
          'especializacion comida mexicana'
        ],
        tipoUbicacion: 'Presencial',
        ubicacion: 'Colina Campestre, Bogota',
        fechaPlazo: '20/05/2023',
        urlImagen:
            'https://img.freepik.com/vector-gratis/plantilla-poster-trabajo-chef-diseno-plano_23-2149913730.jpg',
      ),
      '19': TareaModel(
        codigo: '19',
        creador: '@joseph',
        estado: 'Por hacer',
        titulo: 'Auxiliar de cocina',
        descripcion:
            'Reconocida cadena de restaurantes se encuentra en la búsqueda de auxiliares de cocina',
        sectores: ['Gastronomia'],
        presupuesto: 1160000,
        rankMinimo: 2,
        requerimientos: [
          'Minimo 1 año de experiencia',
          'manejo carnes',
          'disponibilidad de lunes a sabado'
        ],
        tipoUbicacion: 'Presencial',
        ubicacion: 'Centro comercial Multiplaza, Bogotá',
        fechaPlazo: '31/05/2023',
        urlImagen:
            'https://img.freepik.com/psd-gratis/cartel-negocios-restaurante_23-2148905191.jpg',
      ),
      '12': TareaModel(
        codigo: '12',
        creador: '@joseph',
        estado: 'Por hacer',
        titulo: 'Practicante de cocina francesa',
        descripcion:
            'Empresa de comida francesa busca practicante que desee realizar sus practicas ',
        sectores: ['Gastronomia'],
        presupuesto: 730000,
        rankMinimo: 0,
        requerimientos: [
          'Estudiante activo de gastronimia',
          'enfasis en comida francesa',
          'disponibilidad de horario'
        ],
        tipoUbicacion: 'Presencial',
        ubicacion: 'Zona Norte, Bogotá',
        fechaPlazo: '28/05/2023',
        urlImagen:
            'https://img.freepik.com/vector-gratis/plantilla-cartel-vertical-horizontal-chef-plano_23-2149959048.jpg?w=2000',
      ),
      '11': TareaModel(
        codigo: '11',
        creador: '@joseph',
        estado: 'Por hacer',
        titulo: 'Enfermera',
        descripcion:
            'Se busca enfermera para que cuide a una señora de la tercera edad en la casa 4 dias a la semana',
        sectores: ['Salud'],
        presupuesto: 70000,
        rankMinimo: 0,
        requerimientos: ['Experiencia en cuidado de adultos mayores'],
        tipoUbicacion: 'Presencial',
        ubicacion: 'Modelia, Bogotá',
        fechaPlazo: '29/05/2023',
        urlImagen:
            'https://marketplace.canva.com/EAFfRioIquo/1/0/1131w/canva-flyer-enfermera-a-domicilio-tradicional-azul-IVwzsmYIBAU.jpg',
      ),
      '17': TareaModel(
        codigo: '17',
        creador: '@joseph',
        estado: 'Por hacer',
        titulo: 'FISIOTERAPEUTA',
        descripcion:
            'Se necesita fisioterapeuta personal para el tratamiento de una lesion de gravedad',
        sectores: ['Salud'],
        presupuesto: 3000000,
        rankMinimo: 4,
        requerimientos: ['Licencia', 'experiencia minima de 2 años'],
        tipoUbicacion: 'Presencial',
        ubicacion: 'Rosales, Bogotá',
        fechaPlazo: '26/05/2023',
        urlImagen:
            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/physiotherapy-poster-ad-template-design-1d10a49d34c355b4c0d94855b957219b_screen.jpg?ts=1636995046',
      ),
      '20': TareaModel(
        codigo: '20',
        creador: '@joseph',
        estado: 'Por hacer',
        titulo: 'Medico salud mental',
        descripcion:
            'Entidad de Salud esta en busqueda de medicos en salud mental, horario de lunes a viernes 1:00 pm a 8:00 pm',
        sectores: ['Salud'],
        presupuesto: 4000000,
        rankMinimo: 5,
        requerimientos: [
          'Especialista en salud mental',
          'experiencia minima de 3 años en entidades reconocidas'
        ],
        tipoUbicacion: 'Presencial',
        ubicacion: 'Usaquén, Bogotá',
        fechaPlazo: '05/07/2023',
        urlImagen:
            'https://pbs.twimg.com/media/Fhw8XhOXgAMlYhz?format=jpg&name=large',
      ),
    });
  }

  TareasProvider() {
    _generarTareas();
    _getListaTareas();
    print(tareas);
  }
}
