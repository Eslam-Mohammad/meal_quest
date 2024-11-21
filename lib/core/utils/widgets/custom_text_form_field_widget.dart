import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_quest/core/constants/app_colors.dart';
import 'package:meal_quest/core/constants/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onSaved,
    this.onChange,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
    this.filled,
    this.fillColor,
    this.hintText,
    this.padding =EdgeInsets.zero,
  });
  final void Function(String?)? onSaved;
  final void Function(String?)? onChange;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool? filled;
  final TextEditingController? controller;
  final Color? fillColor;
  final String? hintText;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          onSaved: onSaved,
          onChanged: onChange,
          validator: validator,
          decoration: InputDecoration(
              fillColor: fillColor,
              filled: filled,
              prefixIcon: prefixIcon,
              prefixIconColor: AppColors.backGroundButton,
              hintText: hintText,
              suffixIcon: suffixIcon,
              hintStyle: AppTextStyles.style16Regular
                  .copyWith(color: const Color(0xffB3B3B3)),
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffB3B3B3), width: 1.2),
                  borderRadius: BorderRadius.circular(6)),
              focusedBorder: buildBorder(AppColors.backGroundButton),
              errorBorder: buildBorder(Colors.red),
              focusedErrorBorder: buildBorder(Colors.red),
              border: const OutlineInputBorder())),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide:
          BorderSide(color: color ?? const Color(0xffB3B3B3), width: 1.2),
    );
  }
}
