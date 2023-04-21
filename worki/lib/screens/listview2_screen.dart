import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  
  final List<String> options = const ["Messi","Francia","Croacia"];

  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text((options[index])),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider(),
      )
    );
  }
}