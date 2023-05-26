import 'package:flutter/material.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/views/views.dart';

class SignUpInfoWorkiScreen extends StatelessWidget {
  SignUpInfoWorkiScreen();

  final myFormKey = GlobalKey<FormState>();
  final Map<String, dynamic> formValues = {};

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
            physics: BouncingScrollPhysics(),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  _LogoTexto(),
                  InfoWorkiSignUp(formValues: formValues, myFormKey: myFormKey)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LogoTexto extends StatelessWidget {
  const _LogoTexto();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Image(image: AssetImage('assets/icons/logo_texto_nofondo.png')),
    );
  }
}
