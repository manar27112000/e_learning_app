import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/routings/routes.dart';
import 'package:e_learnning_app/core/widgets/app_primary_button.dart';
import 'package:e_learnning_app/core/widgets/auth_footer_link.dart';
import 'package:e_learnning_app/core/widgets/auth_header.dart';
import 'package:e_learnning_app/core/widgets/or_divider.dart';
import 'package:e_learnning_app/core/widgets/social_buttons.dart';
import 'package:e_learnning_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_learnning_app/features/auth/presentation/cubit/auth_state.dart';
import 'package:e_learnning_app/features/auth/presentation/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final cubit = AuthCubit();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is LoginLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          }
          if (state is LoginSuccess || state is LoginFailure) {
            // Pop the loading dialog if it's showing
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          }

          if (state is LoginSuccess) {
            Navigator.pushReplacementNamed(context, Routes.homeRoute);
          }

          if (state is LoginFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.bgWhite,
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
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
                              if (formKey.currentState!.validate()) {
                                context.read<AuthCubit>().signIn(
                                      email: _emailController.text.trim(),
                                      password: _passwordController.text.trim(),
                                    );
                              }
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
            ),
          );
        },
      ),
    );
  }
}
