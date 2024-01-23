import 'dart:async';

import 'package:ecommerce1_project/screens/home_page/home_page.dart';
import 'package:ecommerce1_project/screens/register_page/register_page.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/app_strings.dart';
import 'package:ecommerce1_project/utils/assets_strings.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kRedColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Image.asset(
              AssetStrings.LOGO_WHITE_PNG,
              width: 180,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              AppStrings.version,
              style: TextThemes.whiteMedium,
            ),
            Text(
              AppStrings.COMPANYNAME,
              style: TextThemes.whiteSmall,
            )
          ],
        ),
      ),
    );
  }
}