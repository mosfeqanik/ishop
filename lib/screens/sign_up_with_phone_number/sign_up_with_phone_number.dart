import 'package:ecommerce1_project/screens/widgets/buttonWidget.dart';
import 'package:ecommerce1_project/screens/widgets/heading_widget.dart';
import 'package:ecommerce1_project/screens/widgets/input_decoration.dart';
import 'package:ecommerce1_project/screens/widgets/secondary_text_widget.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/app_strings.dart';
import 'package:ecommerce1_project/utils/themes_styles.dart';
import 'package:ecommerce1_project/utils/validator_functions.dart';
import 'package:flutter/material.dart';

class SignUpWithPhoneNumber extends StatefulWidget {
  @override
  _SignUpWithPhoneNumberState createState() => _SignUpWithPhoneNumberState();
}

class _SignUpWithPhoneNumberState extends State<SignUpWithPhoneNumber> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderWidget(title: AppStrings.JOIN_ACTIVE_ECOMMERCE),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      AppStrings.PHONE_NUMBER,
                      style: TextThemes.RedHeadingTextfild,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                    child: TextFormField(
                      autofocus: false,
                      validator: validateEmail,
                      decoration:
                          buildInputDecoration(hintText: 'johndoe@example.com'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
              SecondaryText(
                SecondaryTextString:
                    AppStrings.SIGN_UP_WITH_PHONE_NUMBER_DETAILS,
              ),
              ButtonWidget(
                ButtonColor: AppColors.kRedColor,
                ButtonFunction: () {},
                ButtonText: AppStrings.LOG_IN,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
