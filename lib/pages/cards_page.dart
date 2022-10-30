

import 'package:fl_component/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title:const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children:  [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(),

        ],
      )
    );
  }

}