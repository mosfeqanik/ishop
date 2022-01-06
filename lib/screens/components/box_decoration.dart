import 'package:ecommerce1_project/utils/app_colors.dart';
import 'package:flutter/material.dart';

BoxDecoration buildBoxDecoration() {
  return BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(20)),
    border: Border.all(
        color: AppColors.kLightgreyColor, width: 1.0),
  );
}

