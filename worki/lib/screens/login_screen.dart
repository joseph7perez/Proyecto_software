import 'package:flutter/material.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.whitePaper,
            borderRadius: BorderRadius.circular(15),
          ),
          width: size.width*0.8,
          height: size.height*0.8,
          child: Column(
            children: [
              _LogoImage(size: size),
              _Form()
            ],
          ),
        ),
      )
    );
  }
}

class _Form extends StatelessWidget {
  const _Form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children:[
          Text('hola'),
        ]
      )
    );
  }
}

class _LogoImage extends StatelessWidget {
  const _LogoImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/icons/logo_circular_pesado.png'),
        maxRadius: size.width*0.3,
      ),
    );
  }
}

