import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomInputsField extends StatelessWidget {
  const CustomInputsField({Key? key,
                                this.hintText,
                                this.labelText,
                                this.helperText,
                                this.icon,
                                this.suffixIcon,
                                this.obscureText =false,
                                this.keyboardType})
                                : super(key: key);

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //  autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType:keyboardType ,
      obscureText:obscureText,
      onChanged: (value) {
        // print(value);
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //  prefixIcon: Icon(Icons.person),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }

}

