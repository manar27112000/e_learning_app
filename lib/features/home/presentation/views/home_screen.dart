import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/widgets/app_bottom_nav_bar.dart';
import 'package:e_learnning_app/features/home/presentation/widgets/course_card.dart';
import 'package:e_learnning_app/features/home/presentation/widgets/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgWhite,
      body: Column(
        children: [
          // ── Header ──
          const HomeHeader(userName: 'Ahmed Wael'),

          // ── Course Grid ──
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                childAspectRatio: 0.68,
                children: const [
                  CourseCard(
                    title: 'nodejs course',
                    price: '300 EGP',
                    color: Color(0xFF1A1A2E),
                    icon: Icons.code,
                  ),
                  CourseCard(
                    title: 'Andriod developmen...',
                    price: '2500 EGP',
                    color: Color(0xFF4CAF50),
                    icon: Icons.android,
                  ),
                  CourseCard(
                    title: 'Flutter course',
                    price: '200 EGP',
                    color: Color(0xFF42A5F5),
                    icon: Icons.flutter_dash,
                  ),
                  CourseCard(
                    title: 'machine learning co...',
                    price: '300 EGP',
                    color: Color(0xFF26A69A),
                    icon: Icons.psychology,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const AppBottomNavBar(currentIndex: 0),
    );
  }
}
