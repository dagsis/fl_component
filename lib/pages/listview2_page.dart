import 'package:fl_component/theme/app_theme.dart';
import 'package:flutter/material.dart';
class Listview2Page extends StatelessWidget {
  const Listview2Page({Key? key}) : super(key: key);

  final options = const ['Megaman','Meta Gear', 'Super Smash','Final Fantasy'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const  Text(
          'Listview Tipo 2'
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) =>  ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined,color: AppTheme.primary),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (_, __) => Divider(

        ),
        itemCount: options.length,


      ),
    );
  }
}
