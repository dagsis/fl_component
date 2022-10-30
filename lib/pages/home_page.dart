import 'package:fl_component/pages/pages.dart';
import 'package:fl_component/routers/app_routers.dart';
import 'package:fl_component/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;
    return   Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context,index)  => ListTile(
            leading: Icon(menuOption[index].icon,color: AppTheme.primary,),
            title: Text(menuOption[index].name),
            onTap: () {
             Navigator.pushNamed(context, menuOption[index].route);
            },
          ),
          separatorBuilder: (_,__) => const Divider(),
          itemCount: menuOption.length)
    );
  }
}