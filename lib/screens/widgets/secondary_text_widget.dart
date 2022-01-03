import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';
class SecondaryText extends StatelessWidget {
  final String SecondaryTextString;
   SecondaryText({this.SecondaryTextString});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
      child: Center(child: Text(SecondaryTextString,style: TextThemes.SecondaryTextGrey,)),
    );
  }
}
