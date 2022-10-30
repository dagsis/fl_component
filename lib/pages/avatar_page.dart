import 'package:fl_component/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title:const Text('Stan Lee'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: Text(
                'SL',
              ),
              backgroundColor:Colors.indigo[900],
            ),
          )
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: AssetImage('assets/img/avatar.jpg') ,
        ),
      ),
    );
  }
}