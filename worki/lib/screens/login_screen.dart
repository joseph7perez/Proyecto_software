import 'package:flutter/material.dart';
import 'package:worki/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: AuthBackgroundScreen(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ),
    );
  }
}