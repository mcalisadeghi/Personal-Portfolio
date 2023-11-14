import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_styles.dart';

class AppButtons {
  static MaterialButton buildMaterialButton({
    required VoidCallback onTap,
    required String buttonName,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.themeColor,
      splashColor: AppColors.lawGreen,
      padding: const EdgeInsets.symmetric(
        horizontal: 22.0,
        vertical: 10.0,
      ),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          30.0,
        ),
        borderSide: BorderSide.none,
      ),
      hoverColor: AppColors.aqua,
      elevation: 6,
      height: 46.0,
      minWidth: 130.0,
      focusElevation: 12.0,
      child: Text(
        buttonName,
        style: AppTextStyles.headerTextStyle(),
      ),
    );
  }
}
