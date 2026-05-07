import 'package:e_learnning_app/core/routings/routes.dart';
import 'package:e_learnning_app/features/auth/presentation/views/login_screen.dart';
import 'package:e_learnning_app/features/auth/presentation/views/sign_up_screen.dart';
import 'package:e_learnning_app/features/course_details/presentation/views/course_details_screen.dart';
import 'package:e_learnning_app/features/course_videos/presentation/views/course_videos_screen.dart';
import 'package:e_learnning_app/features/home/presentation/views/home_screen.dart';
import 'package:e_learnning_app/features/my_courses/presentation/views/my_courses_screen.dart';
import 'package:e_learnning_app/features/profile/presentation/views/edit_profile_screen.dart';
import 'package:e_learnning_app/features/profile/presentation/views/profile_screen.dart';
import 'package:e_learnning_app/features/splash_screen/presentation/views/splash_screen.dart';
import 'package:e_learnning_app/features/video/presentation/views/video_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpRoute:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.courseDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => const CourseDetailsScreen(),
        );
      case Routes.myCoursesRoute:
        return MaterialPageRoute(
          builder: (_) => const MyCoursesScreen(),
        );
      case Routes.courseVideosRoute:
        return MaterialPageRoute(
          builder: (_) => const CourseVideosScreen(),
        );
      case Routes.videoRoute:
        return MaterialPageRoute(
          builder: (_) => const VideoScreen(),
        );
      case Routes.profileRoute:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );
      case Routes.editProfileRoute:
        return MaterialPageRoute(
          builder: (_) => const EditProfileScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}
