import 'package:flutter/material.dart';
import 'package:worki/theme/app_theme.dart';

class AuthBackgroundScreen extends StatelessWidget {
  
  final Widget child;

  const AuthBackgroundScreen({required this.child});
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: AppTheme.degradado(
        color1: AppTheme.blueDegradentIzq,
        color2: AppTheme.blueDegradentDer,
      ),
      child: Stack(
        children: [
          /* Column(
            children: [ */
              /* _CajaDegradada(
                color1: AppTheme.blueDegradentIzq,
                color2: AppTheme.blueDegradentDer,
                size: size,
              ), */
              _CajaDegradada(
                color1: AppTheme.grayDegradentIzq,
                color2: AppTheme.grayDegradentDer,
                size: size,
              ),
              SafeArea(
                child: Container(
                  margin: EdgeInsets.all(35),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    maxRadius: 100,
                    backgroundImage: AssetImage('assets/icons/logo_circular_pesado.png'),
                  ),
                ),
              ),
            /* ],
          ), */
          this.child,
        ],
      ),
      //child: child,
    );
  }

}

class _CajaDegradada extends StatelessWidget {

  final Size size;
  final Color color1;
  final Color color2;

  const _CajaDegradada({required this.size, required this.color1, required this.color2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height*0.5,
      decoration: AppTheme.degradado(
        color1: this.color1,
        color2: this.color2,
      )
    );
  }
}