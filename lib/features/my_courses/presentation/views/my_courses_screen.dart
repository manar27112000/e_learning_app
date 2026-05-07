import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/widgets/app_bottom_nav_bar.dart';
import 'package:e_learnning_app/features/my_courses/presentation/widgets/subscribed_course_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCoursesScreen extends StatelessWidget {
  const MyCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgWhite,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        automaticallyImplyLeading: false,
        title: Text(
          'Subscribed courses',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.sp),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16.w),
        itemCount: 3,
        separatorBuilder: (context, i) => SizedBox(height: 12.h),
        itemBuilder: (context, index) {
          final courses = [
            {'title': 'nodejs course', 'icon': Icons.code, 'color': const Color(0xFF1A1A2E)},
            {'title': 'Flutter course', 'icon': Icons.flutter_dash, 'color': const Color(0xFF42A5F5)},
            {'title': 'machine learning course', 'icon': Icons.psychology, 'color': const Color(0xFF26A69A)},
          ];
          final course = courses[index];
          return SubscribedCourseItem(
            title: course['title'] as String,
            icon: course['icon'] as IconData,
            color: course['color'] as Color,
          );
        },
      ),
      bottomNavigationBar: const AppBottomNavBar(currentIndex: 1),
    );
  }
}
