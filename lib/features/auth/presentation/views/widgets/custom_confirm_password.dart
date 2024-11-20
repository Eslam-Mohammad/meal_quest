import 'package:flutter/material.dart';
import 'package:meal_quest/core/constants/app_colors.dart';
import 'custom_text_form_field_widget.dart';

class CustomConfirmPasswordField extends StatelessWidget {
  final TextEditingController confirmPasswordController;
  final TextEditingController passwordController;
  final bool visible;
  final VoidCallback toggleVisibility;

  const CustomConfirmPasswordField({
    super.key,
    required this.confirmPasswordController,
    required this.passwordController,
    required this.visible,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: "Confirm Password",
      controller: confirmPasswordController,
      obscureText: visible,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field is required';
        }
        if (value != passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
      prefixIcon: const Icon(Icons.lock),
      suffixIcon: IconButton(
        onPressed: toggleVisibility,
        icon: Icon(
          visible ? Icons.visibility_off : Icons.visibility,
          color: AppColors.backGroundButton,
        ),
      ),
    );
  }
}
