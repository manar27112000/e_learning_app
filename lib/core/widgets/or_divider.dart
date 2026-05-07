import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// "or continue with" / "or sign up with" divider line used in auth screens.
class OrDivider extends StatelessWidget {
  final String text;

  const OrDivider({super.key, this.text = 'or continue with'});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: AppColors.border)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            text,
            style: TextStyle(color: AppColors.textSecondary, fontSize: 13.sp),
          ),
        ),
        const Expanded(child: Divider(color: AppColors.border)),
      ],
    );
  }
}
