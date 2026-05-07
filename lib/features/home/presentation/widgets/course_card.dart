import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/routings/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Individual course card used in the Home screen grid.
class CourseCard extends StatelessWidget {
  final String title;
  final String price;
  final Color color;
  final IconData icon;

  const CourseCard({
    super.key,
    required this.title,
    required this.price,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Course Image Placeholder
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Center(
                child: Icon(icon, color: Colors.white, size: 40.sp),
              ),
            ),
          ),
          // Course Info
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textOnLight,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
            child: Text(
              price,
              style: TextStyle(fontSize: 12.sp, color: AppColors.textSecondary),
            ),
          ),
          // Show Details Button
          Padding(
            padding: EdgeInsets.fromLTRB(10.w, 4.h, 10.w, 10.h),
            child: SizedBox(
              height: 34.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.courseDetailsRoute);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  'Show Details',
                  style: TextStyle(fontSize: 12.sp, color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
