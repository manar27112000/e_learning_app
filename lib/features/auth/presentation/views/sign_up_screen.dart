import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/di/dependency_injection.dart';
import 'package:e_learnning_app/core/routings/routes.dart';
import 'package:e_learnning_app/core/widgets/app_primary_button.dart';
import 'package:e_learnning_app/core/widgets/auth_footer_link.dart';
import 'package:e_learnning_app/core/widgets/auth_header.dart';
import 'package:e_learnning_app/core/widgets/or_divider.dart';
import 'package:e_learnning_app/core/widgets/social_buttons.dart';
import 'package:e_learnning_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:e_learnning_app/features/auth/presentation/cubit/auth_state.dart';
import 'package:e_learnning_app/features/auth/presentation/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is RegisterLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const Center(child: CircularProgressIndicator()),
            );
          }
          if (state is RegisterSuccess || state is RegisterFailure) {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          }

          if (state is RegisterSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Registration successful! Please log in.')),
            );
            Navigator.pushReplacementNamed(context, Routes.loginRoute);
          }

          if (state is RegisterFailure) {
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
                              if (formKey.currentState!.validate()) {
                                context.read<AuthCubit>().signUp(
                                      email: _emailController.text.trim(),
                                      password: _passwordController.text.trim(),
                                      name: _nameController.text.trim(),
                                    );
                              }
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
            ),
          );
        },
      ),
    );
  }
}
