import 'package:flutter/material.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {};

    return Scaffold(
      backgroundColor: AppTheme.whitePaper,
      body: SingleChildScrollView(
        reverse: true,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [        
                _LogoLogin(size: size),
                /* Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [ */
                CustomInputField(
                  hintText: 'correo@poligran.edu.co',
                  labelText: 'Correo Electronico',
                  icon: Icon(Icons.email_outlined),
                  formProperty: 'email',
                  formValues: formValues,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 30,),
                CustomInputField(
                  hintText: '123456',
                  labelText: 'Conraseña',
                  icon: Icon(Icons.password_outlined),
                  formProperty: 'password',
                  formValues: formValues,
                  obscureText: true,
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                  onPressed: (){
                    print(formValues);
                    if(myFormKey.currentState!.validate()) print('bien');
                    else print('mal');
                  },
                  child: Container(
                    child: Text('Ingresar', textAlign: TextAlign.center,),
                    width: size.width*0.6,
                  )
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: (){
                    print(formValues);
                    if(myFormKey.currentState!.validate()) print('bien');
                    else print('mal');
                  },
                  child: Container(
                    child: Text('Crear cuenta', textAlign: TextAlign.center,),
                    width: size.width*0.6,
                  )
                ),
                  /*   ],
                  ),
                ), */
              ],
            ),
          ),
        ),
      ),
    );
  }

/*   void alertaValidaciones(BuildContext context, String mensaje){
    showDialog(
      barrierDismissible: false,
      barrierColor: const Color.fromARGB(236, 181, 255, 84),
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Alerta!!"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(mensaje),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Volver"),
          ),
        ],
      ),
    );
  }
} */

/* class _FormCamps extends StatelessWidget {
  const _FormCamps({
    required this.formValues,
    required this.size, 
    required this.myFormKey,
  });

  final Map<String, String> formValues;
  final GlobalKey<FormState> myFormKey;
  final Size size;

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          CustomInputField(
            hintText: 'correo@poligran.edu.co',
            labelText: 'Correo Electronico',
            icon: const Icon(Icons.email_outlined),
            formProperty: 'email',
            formValues: formValues,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if(value==null) return 'Valor requerido';
              if(!value.contains('@')) return 'Correo invalido';
            },
          ),
          SizedBox(height: 30,),
          CustomInputField(
            hintText: '123456',
            labelText: 'Conraseña',
            icon: const Icon(Icons.password_outlined),
            formProperty: 'password',
            formValues: formValues,
            obscureText: true,
            validator: (value) {
              if(value==null) return 'Valor requerido';
            },
          ),
          SizedBox(height: 50,),
          ElevatedButton(
            onPressed: (){
              print(formValues);
              if(myFormKey.currentState!.validate()) return alertaValidaciones(context, "Bien hecho!");
              return alertaValidaciones(context, "Formularios Incompletos");
            },
            child: Container(
              child: Text('Ingresar', textAlign: TextAlign.center,),
              width: size.width*0.6,
            )
          ),
        ],
      ),
    );
  }*/
} 

class _LogoLogin extends StatelessWidget {
  const _LogoLogin({required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/icons/logo_circular_pesado.png'),
        maxRadius: size.width*0.3,
      ),
    );
  }
}