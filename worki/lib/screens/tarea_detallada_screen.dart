import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/providers/providers.dart';
import 'package:worki/theme/app_theme.dart';

class TareaDetalladaScreen extends StatelessWidget {
  
  const TareaDetalladaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final TareaModel tarea = ModalRoute.of(context)?.settings.arguments as TareaModel;
    final usuariosProvider = Provider.of<UsuariosProvider>(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _AppBarTareaDetallada(tarea: tarea),
          SliverList(
            delegate: SliverChildListDelegate([
              _DescripcionCreador(
                tarea: tarea,
                usuariosProvider: usuariosProvider
              ),
            ])
          ),
        ],
      ),
    );
  }
}

class _AppBarTareaDetallada extends StatelessWidget {

  final TareaModel tarea;

  const _AppBarTareaDetallada({required this.tarea});

  @override
  Widget build(BuildContext context) {
    //print('${movie.backdropPath}');
    return SliverAppBar(
      backgroundColor: AppTheme.primaryColor,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black38,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Text(tarea.titulo, textAlign: TextAlign.center,),
        ),
        background: FadeInImage(
          placeholder: const AssetImage('assets/imgs/loading.gif'), 
          image: NetworkImage('https://i.blogs.es/89aaa3/650_1000_bliss-original/450_1000.jpg'),
          fit:BoxFit.cover,
        ),
      ),
    );
  } 
}

class _DescripcionCreador extends StatelessWidget {

  final TareaModel tarea;
  final UsuariosProvider usuariosProvider;

  const _DescripcionCreador({
    required this.tarea,
    required this.usuariosProvider,
  });

  @override
  Widget build(BuildContext context) {
    final UsuarioModel usuarioCreador = usuariosProvider.obtenerUsuario(tarea.creador);

    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: FadeInImage(
              placeholder: const AssetImage('assets/imgs/foto_perfil_defecto.jpg'),
              image: NetworkImage(
                usuarioCreador.informacionWorki.fotoPerfil ??
                'https://thumbs.dreamstime.com/b/usuario-de-medios-sociales-vectorial-icono-perfil-avatar-predeterminado-retrato-176256935.jpg'
              ),
              width: 160,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          
          const SizedBox(width: 20,),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 160),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${usuarioCreador.informacionPersonal.nombre} ${usuarioCreador.informacionPersonal.apellidos}', 
                  style: textTheme.headlineSmall, overflow: TextOverflow.ellipsis, maxLines: 3,
                ),
                Text(usuarioCreador.informacionWorki.arroba, 
                  style: textTheme.titleMedium, overflow: TextOverflow.ellipsis, maxLines: 2,
                ),
                Row(
                  children: [
                    const Icon(Icons.star_border_purple500, color: Colors.grey,),
                    const SizedBox(width: 5,),
                    //Text(usuarioCreador.informacionPersonal.celular.numero.toString(), style: textTheme.bodySmall,),
                  ],
                )
              ],
            ),
          ) 
        ],
      ),
    );
  }
}