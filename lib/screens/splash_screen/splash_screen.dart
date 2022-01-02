import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/app_strings.dart';
import 'package:ecommerce1_project/utils/img_network_assets_strings.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:flutter/material.dart';



class SplashPage extends StatefulWidget {
  const SplashPage({Key key,  this.title});
  final String title;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kRedColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(ImageNetworkAssetStrings.LOGO_WHITE_PNG,width: 180,),
            SizedBox(height: 30,),
            Text(AppStrings.version,style: TextThemes.whiteMedium,)

          ],
        ),
      ),
    );
  }
}