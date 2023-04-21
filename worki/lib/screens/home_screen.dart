import 'package:components/models/menu_option.dart';
import 'package:components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(AppRoutes.menuOptions[index].name),//const Text("Nombre ruta"),
          leading: Icon(AppRoutes.menuOptions[index].icon),//const Icon(Icons.radio_button_checked_rounded),
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);//"/listview2");
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      )
    );
  }
}