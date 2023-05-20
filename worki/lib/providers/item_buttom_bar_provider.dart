import 'package:flutter/material.dart';

class ItemButtomBarProvider extends ChangeNotifier{
  
  int itemActual=1;

  void setItemActual(int nuevoItem){
    itemActual = nuevoItem;
  }

  UsuariosProvider(){
  }
}