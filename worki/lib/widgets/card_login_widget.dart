import 'package:flutter/material.dart';
import 'package:worki/theme/app_theme.dart';

class CardLoginWidget extends StatelessWidget {
  const CardLoginWidget({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        decoration: AppTheme.createCardShape(radio: 10, color: AppTheme.whitePaper),
        width: size.width*0.75,
        height: size.height*0.4,
        child: Column(
          children: [
            this.child,
          ],
        )
      ),
    );
  }
}