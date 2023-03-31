import 'package:flutter/material.dart';

class IniciarSesionScreen extends StatelessWidget {
  
  const IniciarSesionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Iniciar Sesion"),
      ),
    );
  }
}