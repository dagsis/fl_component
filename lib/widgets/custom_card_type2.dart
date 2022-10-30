import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
        ),
        elevation: 10,
        shadowColor: AppTheme.primary.withOpacity(0.5),
        child: Column(
          children:  [
            FadeInImage(
              placeholder: AssetImage('assets/img/jar-loading.gif'),
              image: NetworkImage('https://images.pexels.com/photos/209807/pexels-photo-209807.jpeg'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration:  Duration(milliseconds: 300),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(right: 20,top: 10,bottom: 10),
                child: Text(
                    'Un Hermoso paisaje')
            )
          ],
        ),
      );
  }
}

