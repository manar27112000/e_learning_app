import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Course image/thumbnail section at the top of course details.
class CourseImageSection extends StatelessWidget {
  final Color color;
  final IconData icon;

  const CourseImageSection({
    super.key,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.h,
      color: color,
      child: Center(
        child: Icon(icon, color: AppColors.success, size: 80.sp),
      ),
    );
  }
}
