import 'package:flutter/material.dart';

import 'app_theme.dart';

class InputDecorations{

  static InputDecoration authInputDecoration({
    required String hintText,
    required String labelText,
  }){
    return InputDecoration(
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(
        color: AppTheme.graySoft,
      ),
    );
  }
}