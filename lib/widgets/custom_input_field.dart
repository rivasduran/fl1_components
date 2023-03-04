import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyBoardType;
  final bool obscureText;

  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyBoardType,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',//ESTE ES PARA AGREGAR UN VALOR INICIAL
      textCapitalization: TextCapitalization.words,//ESTO ES PARA QUE LA PRIMERA LETRA DE CADA PALABRA ESTE EN MAYUSCULAS
      keyboardType: keyBoardType,
      obscureText: obscureText,
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value){
        if(value == null) return 'Este campo es requerido';

        //return 'Homa mundo';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText, //ESTE ES EL PLACEHOLDER
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',//ES UN TEXTO QUE VA AL FINAL DEL INPUT
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        //prefixIcon: Icon(Icons.verified_user_outlined)
        icon: icon == null ? null : Icon(icon),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.green
        //   )
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10),

        //   ),
        // )
      ),
    );
  }
}