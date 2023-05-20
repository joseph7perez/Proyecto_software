import 'package:flutter/material.dart';

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
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if(value==null) return "Valor requerido";
        if(value.length<3) return "Minimo 3 caracteres";
      },
      //autofocus: true,
      keyboardType: keyboardType,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.disabled,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        icon: icon,
      ),
    );
  }
}