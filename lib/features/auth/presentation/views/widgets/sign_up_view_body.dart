import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_quest/core/constants/app_text_styles.dart';
import 'package:meal_quest/core/routes/app_router.dart';
import 'package:meal_quest/core/utils/widgets/custom_button.dart';
import 'package:meal_quest/features/auth/presentation/views/widgets/custom_confirm_password.dart';
import 'package:meal_quest/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:meal_quest/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:meal_quest/features/auth/presentation/views/widgets/cutom_name_text_field.dart';
import 'package:meal_quest/features/auth/presentation/views/widgets/navigation_login_or_sign_up.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;
  bool _confirmPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', style: AppTextStyles.style20SemiBold),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
              Text("Name", style: AppTextStyles.style16Regular),
              SizedBox(height: 8.h),
              NameField(nameController: _nameController),
              SizedBox(height: 16.h),
              Text("Email", style: AppTextStyles.style16Regular),
              SizedBox(height: 8.h),
              EmailField(emailController: _emailController),
              SizedBox(height: 16.h),
              Text("Password", style: AppTextStyles.style16Regular),
              SizedBox(height: 8.h),
              PasswordField(
                passwordController: _passwordController,
                visible: _passwordVisible,
                toggleVisibility: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
              SizedBox(height: 16.h),
              Text("Confirm Password", style: AppTextStyles.style16Regular),
              SizedBox(height: 8.h),
              CustomConfirmPasswordField(
                confirmPasswordController: _confirmPasswordController,
                passwordController: _passwordController,
                visible: _confirmPasswordVisible,
                toggleVisibility: () {
                  setState(() {
                    _confirmPasswordVisible = !_confirmPasswordVisible;
                  });
                },
              ),
              SizedBox(height: 40.h),

              CustomButton(
                text: "Sign Up",
                onTap: () {
                  if (_formKey.currentState!.validate()) {

                  }
                },
              ),

              SizedBox(height: 24.h),

              NavigationLoginOrSignUp(
                textButton: "Login",
                textMessage: "Already have an account?",
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kLogInView);

                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
