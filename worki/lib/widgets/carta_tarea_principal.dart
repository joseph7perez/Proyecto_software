import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CartaTareaPrincipal extends StatelessWidget {
  const CartaTareaPrincipal({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: size.height*0.6,
        child: Swiper(
          itemCount: 10,
          layout: SwiperLayout.STACK,
          itemWidth: size.width*0.9,
          itemHeight: size.height*0.8,
          itemBuilder: (context, index) {
            return FadeInImage(
              placeholder:  AssetImage('assets/imgs/carta_defecto.jpg'),
              image: AssetImage('assets/imgs/carta_defecto.jpg'),
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}