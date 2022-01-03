import 'package:ecommerce1_project/screens/widgets/heading_widget.dart';
import 'package:ecommerce1_project/screens/widgets/input_decoration.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderWidget(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(AppStrings.TEXTFIELD_HEADER_NAME,style: TextThemes.RedHeadingTextfild,),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                    child: TextFormField(
                      autofocus: false,
                      decoration: buildInputDecoration(hintText: 'john Doe'),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      AppStrings.EMAIL,
                      style: TextThemes.RedHeadingTextfild,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 15.0,right: 15.0 ,top: 10),
                    child: TextFormField(
                      autofocus: false,
                      validator: validateEmail,
                      decoration:
                          buildInputDecoration(hintText: 'johndoe@example.com'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
                    child: Text(
                      AppStrings.OR_REGISTER_WITH_PHONE_NUMBER,
                      style: TextThemes.RedTextsmall,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(AppStrings.PASSWORD,style: TextThemes.RedHeadingTextfild,),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                    child: TextFormField(
                      autofocus: false,
                      obscureText: true,
                      decoration: buildInputDecoration(hintText: 'Password'),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(AppStrings.RE_TYPEPASSWORD,style: TextThemes.RedHeadingTextfild,),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                    child: TextFormField(
                      autofocus: false,
                      validator: validateEmail,
                      decoration: buildInputDecoration(hintText: 'Enter Password Again'),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
