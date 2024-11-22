import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_quest/core/routes/app_router.dart';

import 'core/theme/app_theme.dart';
void main() {
  runApp(const MealQuestApp());
}
class MealQuestApp extends StatelessWidget {
  const MealQuestApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme: getLightMode
        );
      },
    );
  }
}
