import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: AppTheme.bloodOrange,
      decoration: _degradadoAbajo(),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          //Fondo azul
          _BlueBox(),
          //Logo
          _HeaderIcon(),

          this.child,
        ],
      ),
    );
  }

  BoxDecoration _degradadoAbajo() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        AppTheme.orangeDegradentIzq,
        AppTheme.orangeDegradentDer,
      ]));
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //margin: const EdgeInsets.all(100),
        margin: const EdgeInsets.all(35),
        alignment: Alignment.topCenter,
        child: const CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
            AppTheme.logo,
          ),
        ),
      ),
    );
  }
}

class _BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _degradadoArriba(),
      child: Stack(
        children: [],
      ),
    );
  }

  BoxDecoration _degradadoArriba() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        AppTheme.blueDegradentIzq,
        AppTheme.blueDegradentDer,
      ]));
}
