import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final double paddingHorizontal;
  final double heightShape;
  final double radiusCircular;

  const CardContainer(
      {super.key,
      required this.child,
      required this.paddingHorizontal,
      required this.heightShape,
      required this.radiusCircular}
    );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: this.paddingHorizontal),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(this.radiusCircular),
        height: this.heightShape,
        decoration: _createCardShape(),
        child: this.child,
      ),
    );
  }

  BoxDecoration _createCardShape() => BoxDecoration(
        color: AppTheme.whitePaper,
        borderRadius: BorderRadius.circular(this.radiusCircular),
      );
}
