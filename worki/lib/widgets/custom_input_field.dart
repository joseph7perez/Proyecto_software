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
  final Map<String, String> formValues;


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
    required this.formProperty, 
    required this.formValues, 
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final textStyleForms = TextStyle(color: AppTheme.whitePaper);
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) => validator(value),
      /* validator: (value) {
        if(value==null) return "Valor requerido";
        if(keyboardType==TextInputType.emailAddress && !value.contains('@')) return 'Formato incorrecto';
      }, */
      //autofocus: true,
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
        hintStyle: textStyleForms,
        labelStyle: textStyleForms,
        helperStyle: textStyleForms,
        counterStyle: textStyleForms,
        suffixIconColor: AppTheme.whitePaper,
        prefixIconColor: AppTheme.whitePaper,
      ),
    );
  }
}