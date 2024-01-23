
import 'package:ecommerce1_project/screens/sign_up_with_phone_number/sign_up_with_phone_number.dart';
import 'package:ecommerce1_project/screens/widgets/buttonWidget.dart';
import 'package:ecommerce1_project/screens/widgets/heading_widget.dart';
import 'package:ecommerce1_project/screens/widgets/input_decoration.dart';
import 'package:ecommerce1_project/screens/widgets/secondary_text_widget.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/app_strings.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:ecommerce1_project/utils/validator_functions.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderWidget(title: AppStrings.LOGIN_TO_ACTIVE_ECOMMERCE),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        AppStrings.EMAIL,
                        style: TextThemes.RedHeadingTextfild,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 10),
                      child: TextFormField(
                        autofocus: false,
                        // validator: validateEmail,
                        decoration: buildInputDecoration(
                            hintText: 'johndoe@example.com'),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 0),
                      child: const Text(
                        AppStrings.FORGET_PASSWORD,
                        style: TextThemes.BlueTextsmall,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        AppStrings.PASSWORD,
                        style: TextThemes.RedHeadingTextfild,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10),
                      child: TextFormField(
                        autofocus: false,
                        obscureText: true,
                        decoration: buildInputDecoration(hintText: 'Password'),
                      ),
                    )
                  ],
                ),
                ButtonWidget(
                  ButtonColor: AppColors.kRedColor,
                  ButtonFunction: () {},
                  ButtonText: AppStrings.LOG_IN,
                ),
                SecondaryText(
                  SecondaryTextString: AppStrings.OR_CREATE_AN_ACCOUNT,
                ),
                ButtonWidget(
                  ButtonColor: AppColors.kCreamColor,
                  ButtonFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpWithPhoneNumber()),
                    );
                  },
                  ButtonText: AppStrings.SIGN_UP,
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

