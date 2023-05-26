import 'package:flutter/material.dart';
import 'package:worki/providers/providers.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen();

  final myFormKey = GlobalKey<FormState>();
  final Map<String, String> formValues = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppTheme.degradado(
          color1: AppTheme.grayDegradentIzq, 
          color2: AppTheme.grayDegradentDer
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            //reverse: true, //sirve para llevar al final del scroll al seleccionar un campo
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  _LogoLogin(),
                  _FormCamps(formValues: formValues, myFormKey: myFormKey),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LogoLogin extends StatelessWidget {
  const _LogoLogin();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(40),
      child: CircleAvatar(
        backgroundColor: AppTheme.transparente,
        backgroundImage: AssetImage('assets/icons/logo_circular_pesado.png'),
        maxRadius: size.width * 0.4,
      ),
    );
  }
}

class _FormCamps extends StatelessWidget {
  const _FormCamps({
    required this.formValues,
    required this.myFormKey,
  });

  final Map<String, String> formValues;
  final GlobalKey<FormState> myFormKey;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final UsuariosProvider usuariosProvider = Provider.of<UsuariosProvider>(context);

    return Container(
      decoration: AppTheme.degradado(
        color1: AppTheme.blueDegradentIzq, 
        color2: AppTheme.blueDegradentDer
      ),
      height: size.height-(size.width*0.7+130), //size.width*0.7 diametro del logo y 150 del padding de cada container
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          //Correo
          CustomInputField(
            hintText: 'correo@poligran.edu.co',
            labelText: 'Correo Electronico',
            icon: Icon(Icons.email_outlined),
            formProperty: 'email',
            formValues: formValues,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (!value.toString().contains('@')) return 'Formato incorrecto';
            },
          ),
          SizedBox(
            height: 30,
          ),
          //Password
          CustomInputField(
            hintText: '123456',
            labelText: 'Contraseña',
            icon: Icon(Icons.password_outlined),
            formProperty: 'password',
            formValues: formValues,
            obscureText: true,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().isEmpty) return 'Valor requerido';
            },
          ),
          SizedBox(
            height: 30,
          ),
          //Boton Ingresar
          ElevatedButton(
            onPressed: () {
              if (myFormKey.currentState!.validate()) {
                if (usuariosProvider.buscarUsuario(formValues['email']!, formValues['password']!)) {
                  Navigator.pushReplacementNamed(context, '/home', arguments: usuariosProvider.obtenerUsuario(formValues['email']!));
                } else return alertaValidaciones(context, 'Credenciales incorrectas');
              } else return alertaValidaciones(context, 'Formularios Incompletos');
            },
            child: Container(
              child: Text('Ingresar', textAlign: TextAlign.center),
              width: size.width * 0.6,
            )
          ),
          SizedBox(
            height: 20,
          ),
          //Boton Crear cuenta
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/sign_up'),
            child: Container(
              child: Text('Crear cuenta', textAlign: TextAlign.center),
              width: size.width * 0.6,
            )
          ),
        ],
      ),
    );
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
