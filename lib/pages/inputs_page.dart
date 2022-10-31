import 'package:flutter/material.dart';
import 'package:fl_component/widgets/widgets.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              CustomInputsField(labelText: 'Nombre',hintText: 'Nombre del Usuario'),
              SizedBox(height: 30,),
              CustomInputsField(labelText: 'Apellido',hintText: 'Apellido del Usuario'),
              SizedBox(height: 30,),
              CustomInputsField(labelText: 'Email',hintText: 'Email del Usuario',keyboardType: TextInputType.emailAddress,),
              SizedBox(height: 30,),
              CustomInputsField(labelText: 'Contraseña',keyboardType: TextInputType.emailAddress,obscureText: true,),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}