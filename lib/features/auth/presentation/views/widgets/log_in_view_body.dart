import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_quest/core/constants/app_colors.dart';
import 'package:meal_quest/core/constants/app_text_styles.dart';
import 'package:meal_quest/core/utils/widgets/custom_button.dart';
import 'package:meal_quest/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:meal_quest/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:meal_quest/features/auth/presentation/views/widgets/navigation_login_or_sign_up.dart';
class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Log In',style: AppTextStyles.style20SemiBold,),
      ),
      body: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(horizontal: 20.w, ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             SizedBox(height: 40.h,),
              Text("Email",style: AppTextStyles.style16Regular,),
              SizedBox(height: 8.h,),
              EmailField(emailController: _emailController),
               SizedBox(height: 16.h),
              Text("Password",style: AppTextStyles.style16Regular,),
          SizedBox(height: 8.h,),
              PasswordField(
                passwordController: _passwordController,
                visible: _passwordVisible,
                toggleVisibility: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
               SizedBox(height: 40.h),

              CustomButton(
                  text: "Log In",
                  onTap:(){
                    if (_formKey.currentState!.validate()) {

                    }
              }),

               SizedBox(height: 24.h),
              NavigationLoginOrSignUp(
                textButton: "Login",
                textMessage: "Already have an account?",
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}