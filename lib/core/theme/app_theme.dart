import 'package:flutter/material.dart';
import 'package:meal_quest/core/constants/app_text_styles.dart';
import '../constants/app_colors.dart';

ThemeData get getLightMode {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
      titleTextStyle: AppTextStyles.style24SemiBold.copyWith(
        color: Colors.black,
      ),

      backgroundColor: AppColors.appBarBackground,
      // elevation: 2
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: AppTextStyles.style18Regular.copyWith(
        color: const Color(0xffB3B3B3),
      ),
    ),
    textTheme: TextTheme(

      // headLine
      headlineLarge: AppTextStyles.style50Bold,
      headlineMedium: AppTextStyles.style24Bold,
      headlineSmall: AppTextStyles.style16SemiBold,

      //title
      titleLarge: AppTextStyles.style20SemiBold,
      titleMedium: AppTextStyles.style20SemiBold,
      //subTitle
      titleSmall: AppTextStyles.style16Medium,

      //body
      bodyLarge: AppTextStyles.style20SemiBold,
      bodyMedium: AppTextStyles.style20SemiBold,
      bodySmall: AppTextStyles.style14Regular,

      //label
      labelLarge:AppTextStyles.style20SemiBold ,
      labelMedium:AppTextStyles.style20SemiBold ,
      labelSmall:AppTextStyles.style20SemiBold ,

    ),
  );
}
