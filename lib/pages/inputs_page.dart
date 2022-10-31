import 'package:flutter/material.dart';
import 'package:fl_component/widgets/widgets.dart';

class InputsPage extends StatelessWidget {
  const InputsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();


    final Map<String,String> formValues = {
      'first_name'   : '',
      'last_name'    : '',
      'email'        : '',
      'password'     : '',
      'role'         : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                 CustomInputsField(labelText: 'Nombre',hintText: 'Nombre del Usuario', formProperty: 'first_mame',formValues: formValues,),
                SizedBox(height: 30,),
                CustomInputsField(labelText: 'Apellido',hintText: 'Apellido del Usuario', formProperty: 'last_mame',formValues: formValues),
                SizedBox(height: 30,),
                CustomInputsField(labelText: 'Email',hintText: 'Email del Usuario',keyboardType: TextInputType.emailAddress, formProperty: 'email',formValues: formValues),
                SizedBox(height: 30,),
                CustomInputsField(labelText: 'Contraseña',keyboardType: TextInputType.emailAddress,obscureText: true, formProperty: 'password',formValues: formValues),
                SizedBox(height: 30,),
                
                DropdownButtonFormField(
                  value: 'Admin',
                  items: [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'User',child: Text('User')),
                    DropdownMenuItem(value: 'Developer',child: Text('Developer')),
                    DropdownMenuItem(value: 'Employer',child: Text('Employer')),
                ], onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                     FocusScope.of(context).requestFocus(FocusNode());
                     if (!myFormKey.currentState!.validate()){
                        return;
                      }

                     print(formValues['role']);
                  },
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                         'Guardar'
                        ),
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}