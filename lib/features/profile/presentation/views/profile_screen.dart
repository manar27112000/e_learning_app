import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/routings/routes.dart';
import 'package:e_learnning_app/core/widgets/app_bottom_nav_bar.dart';
import 'package:e_learnning_app/features/profile/presentation/widgets/profile_user_card.dart';
import 'package:e_learnning_app/features/profile/presentation/widgets/settings_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgWhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ── Header ──
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(20.w, 56.h, 20.w, 24.h),
              color: AppColors.primary,
              child: Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            // ── User Card ──
            const ProfileUserCard(
              name: 'Ahmed Wael',
              email: 'ahmed.wael@csacademy.com',
            ),

            // ── Settings ──
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _sectionLabel('ACCOUNT SETTINGS'),
                  SizedBox(height: 12.h),
                  SettingsItem(
                    icon: Icons.person_outline,
                    title: 'Edit Profile',
                    onTap: () => Navigator.pushNamed(context, Routes.editProfileRoute),
                  ),
                  SettingsItem(
                    icon: Icons.lock_outline,
                    title: 'Change Password',
                    onTap: () {},
                  ),

                  SizedBox(height: 24.h),
                  _sectionLabel('LEARNING'),
                  SizedBox(height: 12.h),
                  SettingsItem(
                    icon: Icons.workspace_premium_outlined,
                    title: 'My Certificates',
                    onTap: () {},
                  ),
                  SettingsItem(
                    icon: Icons.receipt_long_outlined,
                    title: 'Purchase History',
                    onTap: () {},
                  ),

                  SizedBox(height: 30.h),

                  // ── Log Out ──
                  Center(
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          Routes.loginRoute,
                          (route) => false,
                        );
                      },
                      icon: Icon(Icons.logout, color: AppColors.error, size: 20.sp),
                      label: Text(
                        'Log Out',
                        style: TextStyle(
                          color: AppColors.error,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavBar(currentIndex: 2),
    );
  }

  Widget _sectionLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textSecondary,
        letterSpacing: 0.5,
      ),
    );
  }
}
