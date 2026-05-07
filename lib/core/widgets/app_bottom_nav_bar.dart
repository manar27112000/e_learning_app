import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/core/routings/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Shared bottom navigation bar used across Home, My Courses, and Profile screens.
class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const AppBottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: AppColors.primary,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedFontSize: 12.sp,
          unselectedFontSize: 12.sp,
          onTap: (index) => _onItemTapped(context, index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'My Courses'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(BuildContext context, int index) {
    if (index == currentIndex) return;
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, Routes.homeRoute);
        break;
      case 1:
        Navigator.pushReplacementNamed(context, Routes.myCoursesRoute);
        break;
      case 2:
        Navigator.pushReplacementNamed(context, Routes.profileRoute);
        break;
    }
  }
}
