import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/routings/routes.dart';
import 'package:e_learnning_app/core/widgets/app_primary_button.dart';
import 'package:e_learnning_app/features/course_details/presentation/widgets/course_image_section.dart';
import 'package:e_learnning_app/features/course_details/presentation/widgets/course_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgWhite,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Course Details',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.sp),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CourseImageSection(
              color: Color(0xFF1A1A2E),
              icon: Icons.android,
            ),
            CourseInfoSection(
              title: 'Android development course',
              price: '2500 EGP',
              description:
                  'Learn Android App Development in both Java & Kotlin Languages. You\'ll master Android from ZERO to HERO.',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(20.w, 8.h, 20.w, 24.h),
        child: AppPrimaryButton(
          text: 'Start Course',
          onPressed: () {
            Navigator.pushNamed(context, Routes.courseVideosRoute);
          },
        ),
      ),
    );
  }
}
