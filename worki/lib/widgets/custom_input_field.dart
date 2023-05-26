import 'package:flutter/material.dart';
import 'package:worki/theme/app_theme.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final Icon? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Function validator;
  final Map<String, dynamic> formValues;
  final TextCapitalization? tipoTexto;


  const CustomInputField({
    super.key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.counterText, 
    this.prefixIcon, 
    this.suffixIcon, 
    this.icon, 
    this.keyboardType,
    this.obscureText = false, 
    this.tipoTexto = TextCapitalization.none,
    required this.formProperty, 
    required this.formValues, 
    required this.validator, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        textCapitalization: tipoTexto!,
        onChanged: (value) {
          formValues[formProperty] = value;
        },
        validator: (value) => validator(value),
        keyboardType: keyboardType,
        obscureText: obscureText,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          counterText: counterText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          icon: icon,
          //Styles
          labelStyle: TextStyle(color: AppTheme.whitePaper),
          suffixIconColor: AppTheme.whitePaper,
          prefixIconColor: AppTheme.whitePaper,
        ),
      ),
    );
  }
}