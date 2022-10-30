import 'package:fl_component/theme/app_theme.dart';
import 'package:flutter/material.dart';
class Listview1Page extends StatelessWidget {
  const Listview1Page({Key? key}) : super(key: key);

  final options = const ['Megaman','Meta Gear', 'Super Smash','Final Fantasy'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const  Text(
          'Listview Tipo 1'
        ),
      ),
      body: ListView(
        children:  [
          ...options.map((e) => ListTile(
            title: Text(e),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,color: AppTheme.primary,),
          ) ).toList()

        ],
      ),
    );
  }
}
