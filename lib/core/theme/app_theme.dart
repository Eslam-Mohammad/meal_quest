
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

final ThemeData themeDataLight = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
textTheme:const TextTheme(
  headlineLarge: TextStyle(fontSize: 52.0, fontWeight: FontWeight.bold, fontFamily: 'poppins'),
  headlineMedium: TextStyle(fontSize: 27.0,  fontFamily: 'poppins'),
  headlineSmall: TextStyle(fontSize: 16.0, fontFamily: 'poppins'),
),


);