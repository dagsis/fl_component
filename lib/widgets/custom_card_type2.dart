import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    Key? key,
    required this.imageUrl,
             this.name})
      : super(key: key);

  final String imageUrl;
  final String? name;

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
              image: NetworkImage(imageUrl),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration:  Duration(milliseconds: 300),
            ),
            if (name != null)
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: EdgeInsets.only(right: 20,top: 10,bottom: 10),
                  child: Text(name! )
              )
          ],
        ),
      );
  }
}

