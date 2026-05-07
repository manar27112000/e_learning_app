import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';

/// Reusable social login buttons row (Google, Facebook, Apple).
class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _socialCircle(icon: Icons.g_mobiledata, color: const Color(0xFFDB4437)),
        SizedBox(width: 24.w),
        _socialCircle(icon: Icons.facebook, color: const Color(0xFF4267B2)),
        SizedBox(width: 24.w),
        _socialCircle(icon: Icons.apple, color: AppColors.textOnLight),
      ],
    );
  }

  Widget _socialCircle({required IconData icon, required Color color}) {
    return Container(
      width: 50.w,
      height: 50.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.border, width: 1),
        color: Colors.white,
      ),
      child: Icon(icon, color: color, size: 30.sp),
    );
  }
}
