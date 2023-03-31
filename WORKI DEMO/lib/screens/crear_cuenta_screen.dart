import 'package:flutter/material.dart';

class CrearCuentaScreen extends StatelessWidget {
  
  const CrearCuentaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Crear Cuenta"),
      ),

      body: const Center(child: Text("Aun estamos en desarrollo :("),)
    );
  }
}