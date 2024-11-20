import 'package:flutter/material.dart';
import 'package:meal_quest/core/constants/app_colors.dart';
import 'package:meal_quest/core/constants/app_text_styles.dart';
class NavigationLoginOrSignUp extends StatelessWidget {
  const NavigationLoginOrSignUp({super.key, required this.textMessage, required this.onPressed, required this.textButton});
  final String textMessage;
 final  void Function() onPressed;
 final String textButton;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(textMessage,style: AppTextStyles.style16Regular,),
          TextButton(
            onPressed:onPressed,
            child:  Text(
              textButton,
              style: AppTextStyles.style16Regular.copyWith(color: AppColors.backGroundButton)
            ),
          ),
        ],
      ),
    );
  }
}
