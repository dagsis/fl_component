

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
          CustomCardType2(imageUrl: 'https://images.pexels.com/photos/209807/pexels-photo-209807.jpeg',textImg: 'Un Hermoso amanecer',),
          CustomCardType2(imageUrl:'https://www.rdstation.com/blog/wp-content/uploads/sites/2/2017/09/thestocks.jpg',textImg: 'Lampara con filamento',),
          CustomCardType2(imageUrl:'https://educacion30.b-cdn.net/wp-content/uploads/2019/02/girasoles-978x652.jpg',textImg: 'Girasol apuntando al sol',),
          CustomCardType2(imageUrl:'http://www.nasa.gov/sites/default/files/thumbnails/image/web_first_images_release_0.png',textImg: 'Firmamento',),

        ],
      )
    );
  }

}