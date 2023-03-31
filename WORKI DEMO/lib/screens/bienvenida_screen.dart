import 'package:flutter/material.dart';

import '../router/apps_routes.dart';

class BienvenidaScreen extends StatelessWidget {
  
  const BienvenidaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BIENVENID@ A WORKI!!"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(menuOptions[index].name),
          leading: Icon(menuOptions[index].icon),
          onTap: (){
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOptions.length,
        )
    );
  }
}