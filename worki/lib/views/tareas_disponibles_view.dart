import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/theme/app_theme.dart';

class TareasDisponiblesView extends StatelessWidget {
  
  const TareasDisponiblesView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final UsuarioModel usuario = ModalRoute.of(context)?.settings.arguments as UsuarioModel;

    return Scaffold(
      backgroundColor: AppTheme.graySoft,
      body: Center(
        child: Container(
          width: double.infinity,
          height: size.height*0.9,
          child: Swiper(
            itemCount: 10,
            layout: SwiperLayout.STACK,
            itemWidth: size.width*0.9,
            itemHeight: size.height*0.8,
            itemBuilder: (context, index) {
              return FadeInImage(
                placeholder: AssetImage('assets/imgs/foto_perfil_defecto.jpg'), 
                image: AssetImage('assets/imgs/carta_defecto.jpg'),
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      )
    );
  }
}