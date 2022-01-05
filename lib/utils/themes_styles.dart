import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {
  static const TextStyle whiteMedium = TextStyle(
    fontFamily: "Solway",
    fontSize: 15,
    color: Color.fromRGBO(255, 255, 255, 1.0),
  );
  static const TextStyle whiteSmall = TextStyle(
    fontFamily: "Solway",
    fontSize: 13,
    color: Color.fromRGBO(255, 255, 255, 1.0),
  );
  static const TextStyle RedHeading = TextStyle(
    fontFamily: "Solway",
    fontSize: 20,
    fontWeight: FontWeight.w900,
    color: AppColors.kRedColor,
  );
  static const TextStyle RedHeadingTextfild = TextStyle(
    fontFamily: "Solway",
    fontSize: 16,
    fontWeight: FontWeight.w900,
    color: AppColors.kRedColor,
  );
  static const TextStyle RedTextsmall = TextStyle(
    fontFamily: "Solway",
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontStyle:  FontStyle. italic,
    color: AppColors.kRedColor,
  );
  static const TextStyle RedTextMedium = TextStyle(
    fontFamily: "Solway",
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.kRedColor,
  );
  static const TextStyle BlueTextsmall = TextStyle(
    fontFamily: "Solway",
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontStyle:  FontStyle. italic,
    color: AppColors.kSecondaryBlueColor,
  );
  static const TextStyle BlackTextMedium = TextStyle(
    fontFamily: "Solway",
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.kTenBlackColor,
  );
  static const TextStyle GreyTextSmallUnderline = TextStyle(
    fontFamily: "Solway",
    fontSize: 12,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w600,
    color: AppColors.kSecondaryGreyColor,
  );
  static const TextStyle BlackTextHeading = TextStyle(
    fontFamily: "Solway",
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.kTenBlackColor,
  );

  static const TextStyle ButtonTextWhite = TextStyle(
    fontFamily: "Solway",
    fontSize: 18,
    color: Colors.white,
  );
  static const TextStyle SecondaryTextGrey = TextStyle(
    fontFamily: "Solway",
    fontSize: 16,
    color: AppColors.kSecondaryGreyColor,
  );

  static const TextStyle SecondaryTextDrawerGrey = TextStyle(
    fontFamily: "Solway",
    fontSize: 13,
    color: AppColors.kSecondaryGreyColor,
  );
  static const TextStyle SecondaryTextCategoryListGrey = TextStyle(
    fontFamily: "Solway",
    fontSize: 11,
    color: AppColors.kSecondaryGreyColor,
  );
  static const TextStyle DrawerlistItemTextGrey = TextStyle(
    fontFamily: "Solway",
    fontSize: 16,
    color: AppColors.kgreyColor,
  );
  static final TextStyle blackTextSmallMedium = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.black,
  );

  static final TextStyle kButtonTextBold =TextStyle(
    fontSize: 14,
    color: Colors.white,
  );



}
