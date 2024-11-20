import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_quest/core/constants/app_text_styles.dart';
import 'package:meal_quest/core/routes/app_router.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
     GoRouter.of(context).push(AppRouter.kOnBoardingView);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff008C8C),
      body: Center(
        child: Text(
          'Meal Quest',
          style: AppTextStyles.style48Bold.copyWith(color:Colors.white),
        ),
      ),
    );
  }
}


