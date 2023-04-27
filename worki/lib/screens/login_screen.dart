import 'package:components/theme/themes.dart';
import 'package:components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height*0.45),
              CardContainer(
                paddingHorizontal: 25,
                radiusCircular: 25,
                heightShape: size.height*0.5,
                child: Column(
                  children: const [
                    SizedBox(height: 10),
                    Text('Iniciar Sesion', style: AppTheme.titulo1),
                    SizedBox(height: 30),
                    _LoginForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'alguien@poligran.edu.co',
                labelText: 'Correo, telefono o nick'
              ),
            ),

            const SizedBox(height: 20),
            
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'Fight Club',
                labelText: 'Contraseña'
              ),
            ),

            const SizedBox(height: 45),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Boton Ingresar
                MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 0,
                  color: AppTheme.graySoft,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Crear Cuenta',
                      style: TextStyle(
                        color: AppTheme.whitePaper,
                      ),  
                    ),
                  ),
                  onPressed: () {
                  },
                ),
                
                //Boton Crear cuenta
                MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 0,
                  color: AppTheme.royalBlue,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Ingresar',
                      style: TextStyle(
                        color: AppTheme.whitePaper,
                      ),  
                    ),
                  ),
                  onPressed: () {
                  },
                ),
              ],
            ),

            const SizedBox(height: 25),

            const Text('Olvide mi contraseña',
            style: TextStyle(color: AppTheme.royalBlue),
            )
          ],
        ),
      ),
    );
  }
}