import 'package:doctorq/View/DOCTORSIDEAPP/SplashAndAuthScreen/authselection.dart';
import 'package:doctorq/core/constants/assets.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
        () => Get.offAll(() => const AuthSelectionScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo, height: 200, width: 200),
            SizedBox(height: 240.h),
            CircularProgressIndicator(
              backgroundColor: Colors.blue.withOpacity(0.3),
            ),
          ],
        ),
      ),
    );
  }
}
