import 'package:flutter/material.dart';
import 'package:worki/models/models.dart';
import 'package:worki/providers/providers.dart';
import 'package:worki/theme/app_theme.dart';
import 'package:worki/widgets/widgets.dart';

class InfoPersonalSignUp extends StatelessWidget {
  const InfoPersonalSignUp({
    super.key,
    required this.formValues,
    required this.myFormKey,
  });

  final Map<String, dynamic> formValues;
  final GlobalKey<FormState> myFormKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 40),
          child: Text('Informacion Personal', style: TextStyle(
            fontSize: 25, color: AppTheme.primaryColor, fontWeight: FontWeight.bold
          ))
        ),
        _FormCamps(formValues: formValues, myFormKey: myFormKey),
      ],
    );
  }
}


class _FormCamps extends StatelessWidget {
  const _FormCamps({
    required this.formValues,
    required this.myFormKey,
  });

  final Map<String, dynamic> formValues;
  final GlobalKey<FormState> myFormKey;

  @override
  Widget build(BuildContext context) {
    final CrearUsuarioProvider crearUsuarioProvider = Provider.of<CrearUsuarioProvider>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: AppTheme.degradado(
        color1: AppTheme.blueDegradentIzq, 
        color2: AppTheme.blueDegradentDer
      ),
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          //Nombre
          CustomInputField(
            hintText: 'Juanito',
            labelText: 'Nombre',
            formProperty: 'nombre',
            formValues: formValues,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().isEmpty) return 'Valor requerido';
            },
          ),
          //Apellido
          CustomInputField(
            hintText: 'Alimaña',
            labelText: 'Apellido',
            formProperty: 'apellidos',
            formValues: formValues,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().isEmpty) return 'Valor requerido';
            },
          ),
          //Correo
          CustomInputField(
            hintText: 'correo@poligran.edu.co',
            labelText: 'Correo electronico',
            formProperty: 'correo',
            formValues: formValues,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (!value.toString().contains('@')) return 'Formato incorrecto';
              if (value.toString().length<2) return 'Falta dominio';
            },
          ),
          //Celular
          CustomInputField(
            hintText: 'XXX XXX XXXX',
            labelText: 'Numero de celular',
            formProperty: 'celular',
            formValues: formValues,
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().length!=10) return 'Formato incorrecto (10 numeros)';
            },
          ),
          //Fecha de nacimiento
          CustomInputField(
            hintText: 'dd/mm/aaaa',
            labelText: 'Fecha de nacimiento',
            formProperty: 'fechaNacimiento',
            formValues: formValues,
            keyboardType: TextInputType.datetime,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().length!=10) return 'Formato incorrecto (dd/mm/yyyy)';
              if(!tieneSolo('/', value.toString(), 3)) return 'Son 3 /';;
            },
          ),
          //Genero
          DropdownButtonFormField<String>(
            hint: Text('Genero'),
            items: const[
              DropdownMenuItem(value: 'masculino',child: Text('Masculino')),
              DropdownMenuItem(value: 'femenino',child: Text('Femenino')),
            ],
            onChanged: (value) {
              formValues['genero'] = value!;
            },
          ),
          SizedBox(height: 30),
          //Lugar de residencia
          CustomInputField(
            hintText: 'Bogota',
            labelText: 'Lugar de residencia',
            formProperty: 'lugarResidencia',
            formValues: formValues,
            keyboardType: TextInputType.streetAddress,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().isEmpty) return 'Valor requerido';
            },
          ),
          //Cedula
          CustomInputField(
            hintText: 'Cedula de ciudadania',
            labelText: 'Cedula',
            formProperty: 'cedula',
            formValues: formValues,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null) return 'Valor requerido';
              if (value.toString().length<9) return 'Minimo 9 numeros';
            },
          ),
          //Boton siguiente
          ElevatedButton(
            onPressed: () {
              if (myFormKey.currentState!.validate()) {
                InformacionPersonalModel informacionPersonal = InformacionPersonalModel(
                  nombre: formValues['nombre'], 
                  apellidos: formValues['apellidos'], 
                  correo: formValues['correo'], 
                  celular: int.parse(formValues['celular']), 
                  fechaNacimiento: formValues['fechaNacimiento'], 
                  genero:formValues['genero']??'masculino', 
                  cedula: int.parse(formValues['cedula']), 
                  lugarResidencia: formValues['lugarResidencia'], 
                );
                crearUsuarioProvider.informacionPersonal = informacionPersonal;
                Navigator.pushNamed(context, '/sign_up_info_worki');
              } else return alertaValidaciones(context, 'Formularios Incompletos');
            },
            child: Container(
              child: Text('Siguiente', textAlign: TextAlign.center),
              width: size.width * 0.6,
            )
          ),
        ],
      ),
    );
  }

  bool tieneSolo(String c, String s, int exacto){
    int cant = 0;
    for(int i = 0; i<s.length; i++){
      if(s[i]==c) cant++;
    }
    return cant==exacto;
  }

  void alertaValidaciones(BuildContext context, String mensaje) {
    showDialog(
      barrierColor: AppTheme.secundaryColorTransparent,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Alerta!!'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text(mensaje)],
        ),
      ),
    );
  }
}
