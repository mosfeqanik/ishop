import 'package:ecommerce1_project/utils/app_strings.dart';
import 'package:ecommerce1_project/utils/assets_strings.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
final String title;

HeaderWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Center(
          child: Image.asset(
            AssetStrings.LOGO_RED_PNG,
            width: 100,
          ),
        ),
        SizedBox(height: 10,),
        Text(title,style: TextThemes.RedHeading,),
        SizedBox(height: 10,),
      ],
    );
  }
}
