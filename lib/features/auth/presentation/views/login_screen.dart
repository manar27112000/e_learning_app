import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/routings/routes.dart';
import 'package:e_learnning_app/core/widgets/app_primary_button.dart';
import 'package:e_learnning_app/core/widgets/auth_footer_link.dart';
import 'package:e_learnning_app/core/widgets/auth_header.dart';
import 'package:e_learnning_app/core/widgets/or_divider.dart';
import 'package:e_learnning_app/core/widgets/social_buttons.dart';
import 'package:e_learnning_app/features/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
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
            const AuthHeader(title: 'Login'),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginForm(
                    emailController: _emailController,
                    passwordController: _passwordController,
                    obscurePassword: _obscurePassword,
                    onTogglePassword: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                  SizedBox(height: 16.h),
                  AppPrimaryButton(
                    text: 'Login',
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, Routes.homeRoute);
                    },
                  ),
                  SizedBox(height: 24.h),
                  const OrDivider(),
                  SizedBox(height: 20.h),
                  const SocialButtons(),
                  SizedBox(height: 30.h),
                  AuthFooterLink(
                    message: "Don't have an account? ",
                    actionText: 'Sign up',
                    onTap: () => Navigator.pushNamed(context, Routes.signUpRoute),
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
