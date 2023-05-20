import 'package:flutter/material.dart';
import 'package:worki/theme/app_theme.dart';

class BarraSuperiorTareas extends StatelessWidget {
  const BarraSuperiorTareas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.ramen_dining_outlined, color: AppTheme.whitePaper,),
        ),
        TextButton(
          onPressed: (){} , 
          child: Text('Siguiendo', style: TextStyle(
            color: AppTheme.whitePaper,
          ),),
        ),
        TextButton(
          onPressed: (){} , 
          child: Text('Para ti', style: TextStyle(
            color: AppTheme.whitePaper,
          ),),
        ),
        IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.search_sharp, color: AppTheme.whitePaper,),
        ),
      ],
    );
  }
}