import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/features/course_videos/presentation/widgets/video_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseVideosScreen extends StatelessWidget {
  const CourseVideosScreen({super.key});

  static const _videos = [
    {'title': 'Intro to Dart', 'subtitle': 'What is Dart and how to start it?', 'icon': Icons.code},
    {'title': 'OOP in Dart', 'subtitle': 'Understanding classes and objects', 'icon': Icons.account_tree},
    {'title': 'Intro to Flutter', 'subtitle': 'Setting up your first project', 'icon': Icons.flutter_dash},
    {'title': 'Widgets in Flutter', 'subtitle': 'Basic building blocks of UI', 'icon': Icons.widgets},
    {'title': 'Stateless Widget', 'subtitle': 'When to use stateless components', 'icon': Icons.web_asset},
    {'title': 'Statefull Widget', 'subtitle': 'Managing dynamic data in UI', 'icon': Icons.dynamic_form},
  ];

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
          'Course Videos',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.sp),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16.w),
        itemCount: _videos.length,
        separatorBuilder: (context, i) => SizedBox(height: 10.h),
        itemBuilder: (context, index) {
          final video = _videos[index];
          return VideoListItem(
            title: video['title'] as String,
            subtitle: video['subtitle'] as String,
            icon: video['icon'] as IconData,
          );
        },
      ),
    );
  }
}
