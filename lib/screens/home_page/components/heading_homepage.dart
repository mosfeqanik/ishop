import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String? TittleText;
   HeadingText({this.TittleText}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Text(TittleText!,style: TextThemes.HeaderTextBlack,),
    );
  }
}
