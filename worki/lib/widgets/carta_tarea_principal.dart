import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';

class CartaTareaPrincipal extends StatelessWidget {

  const CartaTareaPrincipal({
    super.key,
    required this.size,
    required this.tareas,
  });

  final List<TareaModel> tareas;
  final Size size;

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        width: double.infinity,
        height: size.height*0.6,
        child: Swiper(
          itemCount: tareas.length,
          layout: SwiperLayout.STACK,
          itemWidth: size.width*0.9,
          itemHeight: size.height*0.8,
          itemBuilder: (context, index) {
            return FadeInImage(
              placeholder:  AssetImage('assets/imgs/carta_defecto.jpg'),
              image: NetworkImage(tareas[index].urlImagen??'https://i.pinimg.com/564x/92/6e/93/926e93819b099eb79c9ad706032a70ae.jpg'),
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}