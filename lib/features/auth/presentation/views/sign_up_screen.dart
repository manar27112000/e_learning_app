import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/routings/routes.dart';
import 'package:e_learnning_app/core/widgets/app_primary_button.dart';
import 'package:e_learnning_app/core/widgets/auth_footer_link.dart';
import 'package:e_learnning_app/core/widgets/auth_header.dart';
import 'package:e_learnning_app/core/widgets/or_divider.dart';
import 'package:e_learnning_app/core/widgets/social_buttons.dart';
import 'package:e_learnning_app/features/auth/presentation/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AuthHeader(title: 'Sign up'),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SignUpForm(
                    nameController: _nameController,
                    emailController: _emailController,
                    passwordController: _passwordController,
                    obscurePassword: _obscurePassword,
                    onTogglePassword: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                  SizedBox(height: 24.h),
                  AppPrimaryButton(
                    text: 'Sign Up',
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, Routes.homeRoute);
                    },
                  ),
                  SizedBox(height: 24.h),
                  const OrDivider(text: 'or sign up with'),
                  SizedBox(height: 20.h),
                  const SocialButtons(),
                  SizedBox(height: 30.h),
                  AuthFooterLink(
                    message: 'Already have an account? ',
                    actionText: 'Log In',
                    onTap: () => Navigator.pop(context),
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
