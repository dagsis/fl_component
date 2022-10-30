import 'dart:io';

import 'package:fl_component/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  void _displayDialogIos(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context),
                  child: Text('Cancelar')
              ),
              TextButton(onPressed: (){},
                  child: Text('Ok')
              ),
            ],
          );
        }
    );
  }

  void _displayDialogAndroid(BuildContext context){
     showDialog(
         barrierDismissible: false,
         context: context,
         builder: (context) {
           return AlertDialog(
             elevation: 5,
             title: Text('Titulo'),
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
             content: Column(
               mainAxisSize: MainAxisSize.min,
               children: [
                 Text('Contenido de la alerta'),
                 SizedBox(height: 10),
                 FlutterLogo(size: 100,)
               ],
             ),
             actions: [
               TextButton(onPressed: () => Navigator.pop(context),
                   child: Text('Cancelar')
               ),
               TextButton(onPressed: (){},
                   child: Text('Ok')
               ),
             ],
           );
         });
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title:const Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isIOS
             ? _displayDialogIos(context)
             : _displayDialogAndroid(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: const Text(
              'Mostrar Alerta',style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
