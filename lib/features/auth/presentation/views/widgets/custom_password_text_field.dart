import 'package:flutter/material.dart';
import 'package:meal_quest/core/constants/app_colors.dart';

import 'custom_text_form_field_widget.dart';
class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final bool visible;
  final VoidCallback toggleVisibility;

  const PasswordField({
    super.key,
    required this.passwordController,
    required this.visible,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: "Password",
      controller: passwordController,
      obscureText: visible,
      validator: (value) => value == null || value.isEmpty ? 'Field is required' : null,
      prefixIcon: const Icon(Icons.password),
      suffixIcon: IconButton(
        onPressed: toggleVisibility,
        icon: Icon(visible ? Icons.visibility_off : Icons.visibility,color:AppColors.backGroundButton),
      ),
    );
  }
}