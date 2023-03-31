import 'package:flutter/material.dart';
class IniciarSesionScreen extends StatelessWidget {
  const IniciarSesionScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Iniciar Cuenta"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Image.asset('images/logo.png',
                height: 300,
              ),
            ),
            const SizedBox(height: 30,),
            _userTextField(),
            const SizedBox(height: 30,),
            _passwordTextField(),
            const SizedBox(height: 30,),
            _bottonLogin(),
          ],
        ),
      ),
    );
  }
  
  Widget _userTextField() {
    return StreamBuilder(
      builder: (context, snapshot) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.email_outlined),
              hintText: "ejemplo@correo.com",
              labelText: "Correo electronico",
            ),
            /* onChanged: (value){

            }, */
          )
        );
      },
    );

  }
  
  Widget _passwordTextField() {
    return StreamBuilder(
      builder: (context, snapshot) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock_outline),
              hintText: "Contrasena",
              labelText: "Contrasena",
            ),
            /* onChanged: (value){
              
            }, */
          )
        );
      },
    );
  }
  
  Widget _bottonLogin() {
    return StreamBuilder(
      builder: (context, snapshot) {
        return ElevatedButton(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: const Text("Iniciar sesion"),
            ),
            
            onPressed: (){
              
            }
          );
      },
    );
  }
}
