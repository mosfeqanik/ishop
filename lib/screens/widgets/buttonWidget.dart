import 'package:ecommerce1_project/utils/app_strings.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? ButtonText;
  final Function? ButtonFunction;
  final Color? ButtonColor;

  ButtonWidget({this.ButtonText, this.ButtonFunction, this.ButtonColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: ElevatedButton(
        child: Text(
          ButtonText!,
          style: TextThemes.ButtonTextWhite,
        ),
        onPressed: (){},
        style: ElevatedButton.styleFrom(
            primary: ButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: Size.fromHeight(40)),
      ),
    );
  }
}
