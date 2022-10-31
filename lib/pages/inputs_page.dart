import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title:const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: [
              TextFormField(
              //  autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                 // print(value);
                },
                validator: (value) {
                  if (value == null) return 'Este campo es requerido';
                  return value.length < 3 ? 'Mínimo 3 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: 'Nombre del usuario',
                   labelText: 'Nombre',
                  helperText: 'Solo letras',
                  counterText: '3 caracteres',
                //  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.group_add_outlined),
                // icon: Icon(Icons.person),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
                 ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}