import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/providers/providers.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/widgets/widgets.dart';

class InfoWorkiSignUp extends StatelessWidget {
  const InfoWorkiSignUp({
    super.key,
    required this.formValues,
    required this.myFormKey,
  });

  final Map<String, dynamic> formValues;
  final GlobalKey<FormState> myFormKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 40),
          child: Text('Informacion de usuario', style: TextStyle(
            fontSize: 25, color: AppTheme.primaryColor, fontWeight: FontWeight.bold
          ))
        ),
        _FormCamps(formValues: formValues, myFormKey: myFormKey),
      ],
    );
  }
}


class _FormCamps extends StatelessWidget {
  const _FormCamps({
    required this.formValues,
    required this.myFormKey,
  });

  final Map<String, dynamic> formValues;
  final GlobalKey<FormState> myFormKey;

  @override
  Widget build(BuildContext context) {
    
    final UsuariosProvider usuariosProvider = Provider.of<UsuariosProvider>(context);
    final CrearUsuarioProvider crearUsuarioProvider = Provider.of<CrearUsuarioProvider>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: AppTheme.degradado(
        color1: AppTheme.blueDegradentIzq, 
        color2: AppTheme.blueDegradentDer
      ),
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          //Arroba
          CustomInputField(
            hintText: '@arroba',
            labelText: 'Arroba',
            formProperty: 'arroba',
            formValues: formValues,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().isEmpty) return 'Valor requerido';
              if (value.toString().length<2) return 'Valor requerido';
              if (!value.toString().startsWith('@')) return 'Falta arroba al inicio';
            },
          ),
          //Sector
          CustomInputField(
            hintText: 'Tecnologia',
            labelText: 'Sector',
            formProperty: 'sectores',
            formValues: formValues,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().isEmpty) return 'Valor requerido';
            },
          ),
          //Contraseña
          CustomInputField(
            hintText: 'Contraseña',
            labelText: 'Contraseña',
            formProperty: 'password1',
            formValues: formValues,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().isEmpty) return 'Valor requerido';
            },
          ),
          //Confirmar Contraseña
          CustomInputField(
            hintText: 'La misma de arriba',
            labelText: 'Confirmar contraseña',
            formProperty: 'password2',
            formValues: formValues,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().isEmpty) return 'Valor requerido';
            },
          ),
          //url foto perfil
          CustomInputField(
            hintText: 'https://img.jpg',
            labelText: 'Url de foto de perfil',
            formProperty: 'fotoPerfil',
            formValues: formValues,
            validator: (value) {},
          ),
          //Boton siguiente
          ElevatedButton(
            onPressed: () {
              if (myFormKey.currentState!.validate()) {
                if(formValues['password1']!=formValues['password2']){
                  return alertaValidaciones(context, 'No coinciden las contraseñas');
                }
                if(usuariosProvider.existeUsuario(formValues['arroba'])){
                  return alertaValidaciones(context, 'Ya existe arroba');
                }
                InformacionWorkiModel informacionWorki = InformacionWorkiModel(
                  arroba: formValues['arroba'],
                  password: formValues['password1'],
                  sectores: [formValues['sectores']],
                  fotoPerfil: formValues['fotoPerfil']??'',
                );
                crearUsuarioProvider.informacionWorki = informacionWorki;
                Navigator.pushNamed(context, '/home', arguments: crearUsuarioProvider.crearUsuario(context));
              } else return alertaValidaciones(context, 'Formularios Incompletos');
            },
            child: Container(
              child: Text('Siguiente', textAlign: TextAlign.center),
              width: size.width * 0.6,
            )
          ),
        ],
      ),
    );
  }

  bool tieneSolo(String c, String s, int exacto){
    int cant = 0;
    for(int i = 0; i<s.length; i++){
      if(s[i]==c) cant++;
    }
    return cant==exacto;
  }

  void alertaValidaciones(BuildContext context, String mensaje) {
    showDialog(
      barrierColor: AppTheme.secundaryColorTransparent,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Alerta!!'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text(mensaje)],
        ),
      ),
    );
  }
}
