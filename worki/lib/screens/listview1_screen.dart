import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  
  final List<String> options = const ["Messi","Francia","Croacia"];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola"),
      ),
      body: ListView(
        children: [
          ...options.map(
            (pais) => ListTile(
              title: Text(pais),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ).toList(),
        ],
      )
    );
  }
}