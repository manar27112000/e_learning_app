import 'package:e_learnning_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Video player area with code background, play button overlay, and controls.
class VideoPlayerArea extends StatelessWidget {
  const VideoPlayerArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.h,
      color: const Color(0xFF0D1117),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Code background
          Opacity(
            opacity: 0.3,
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                'const express = require("express");\n'
                'const app = express();\n\n'
                'app.get("/", (req, res) => {\n'
                '  res.send("Hello World!");\n'
                '});\n\n'
                'app.listen(3000, () => {\n'
                '  console.log("Server started");\n'
                '});',
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: 'monospace',
                  fontSize: 11.sp,
                ),
              ),
            ),
          ),
          // Play button
          Container(
            width: 64.w,
            height: 64.w,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.9),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.play_arrow, color: Colors.white, size: 36.sp),
          ),
          // Controls bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              color: Colors.black54,
              child: Row(
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 20.sp),
                  SizedBox(width: 8.w),
                  Icon(Icons.volume_up, color: Colors.white, size: 18.sp),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 3,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.r),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.white24,
                        thumbColor: Colors.white,
                      ),
                      child: Slider(value: 0.05, onChanged: (_) {}),
                    ),
                  ),
                  Text(
                    '0:37 / 12:23',
                    style: TextStyle(color: Colors.white, fontSize: 11.sp),
                  ),
                  SizedBox(width: 8.w),
                  Icon(Icons.settings, color: Colors.white, size: 18.sp),
                  SizedBox(width: 8.w),
                  Icon(Icons.fullscreen, color: Colors.white, size: 20.sp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
