import 'package:flutter/material.dart';
import 'package:meal_quest/core/constants/app_colors.dart';
import 'package:meal_quest/core/constants/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor,
  });
  final String text;
  final void Function() onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.backGroundButton,
          borderRadius: BorderRadius.circular(6),
        ),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.style16Medium.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
