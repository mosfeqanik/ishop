import 'package:ecommerce1_project/screens/widgets/buttonWidget.dart';
import 'package:ecommerce1_project/screens/widgets/heading_widget.dart';
import 'package:ecommerce1_project/screens/widgets/input_decoration.dart';
import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:ecommerce1_project/utils/app_strings.dart';
import 'package:flutter/material.dart';



class VerifyPhonePage extends StatefulWidget {
  @override
  _VerifyPhonePageState createState() => _VerifyPhonePageState();
}

class _VerifyPhonePageState extends State<VerifyPhonePage> {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    HeaderWidget(title: AppStrings.VERIFY_YOUR_PHONE_NUMBER),
                    SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 35.0, vertical: 5),
                      child: Center(
                        child: Text(
                          AppStrings.VERIFICATION_MESSAGE_DETAILS,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Solway",
                            fontSize: 16,
                            color: AppColors.kSecondaryGreyColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        autofocus: false,
                        decoration: buildInputDecoration(hintText: ''),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ButtonWidget(
                      ButtonColor: AppColors.kRedColor,
                      ButtonFunction: () {},
                      ButtonText: AppStrings.CONFIRM,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    AppStrings.reset_time,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Solway",
                      fontSize: 16,
                      color: AppColors.kSecondaryGreyColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
