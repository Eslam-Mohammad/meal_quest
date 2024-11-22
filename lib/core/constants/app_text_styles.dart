import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_quest/core/constants/app_variables.dart';

import 'app_font_size_values/app_font_size_values.dart';

abstract class AppTextStyles {
  // Method to Change FontFamily by Changing Lang
  static TextStyle customTextStyle({
    required double fontSize,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
  }) {
    return TextStyle(
      fontFamily: isArabic ? arabicFontFamily : englishFontFamily,
      fontSize: fontSize.sp,
      fontWeight: fontWeight,
      height: height,
      letterSpacing: letterSpacing,
    );
  }

  // regular
  static TextStyle get style10Regular => customTextStyle(
        fontSize: AppFontSizeValues.f10,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get style12Regular => customTextStyle(
        fontSize: AppFontSizeValues.f12,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get style14Regular => customTextStyle(
        fontSize: AppFontSizeValues.f14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.03,
      );

  static TextStyle get style16Regular => customTextStyle(
        fontSize: AppFontSizeValues.f16,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get style18Regular => customTextStyle(
        fontSize: AppFontSizeValues.f18,
        fontWeight: FontWeight.w400,
      );

  // medium
  static TextStyle get style14Medium => customTextStyle(
        fontSize: AppFontSizeValues.f14,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get style16Medium => customTextStyle(
        fontSize: AppFontSizeValues.f16,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get style18Medium => customTextStyle(
        fontSize: AppFontSizeValues.f18,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get style20Medium => customTextStyle(
        fontSize: AppFontSizeValues.f20,
        fontWeight: FontWeight.w500,
      );

  //semi bold
  static TextStyle get style16SemiBold => customTextStyle(
        fontSize: AppFontSizeValues.f16,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get style20SemiBold => customTextStyle(
        fontSize: AppFontSizeValues.f20,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get style24SemiBold => customTextStyle(
        fontSize: AppFontSizeValues.f24,
        fontWeight: FontWeight.w600,
      );

// bold
  static TextStyle get style24Bold => customTextStyle(
        fontSize: AppFontSizeValues.f24,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get style32Bold => customTextStyle(
        fontSize: AppFontSizeValues.f32,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get style48Bold => customTextStyle(
        fontSize: AppFontSizeValues.f48,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get style50Bold => customTextStyle(
        fontSize: AppFontSizeValues.f50,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get style72Bold => customTextStyle(
        fontSize: AppFontSizeValues.f72,
        fontWeight: FontWeight.w700,
      );
}
