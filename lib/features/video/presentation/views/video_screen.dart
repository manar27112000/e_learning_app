import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:e_learnning_app/features/video/presentation/widgets/video_player_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

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
          'video title',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18.sp),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VideoPlayerArea(),
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Text(
              'Node.js Modules',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.textOnLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
