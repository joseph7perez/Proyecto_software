import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';

class TareaDetalladaScreen extends StatelessWidget {
  
  const TareaDetalladaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final TareaModel tarea = ModalRoute.of(context)?.settings.arguments as TareaModel;
    
    return Scaffold(
      body: Center(
        child: Text('${tarea.titulo}'),
      ),
    );
  }
}