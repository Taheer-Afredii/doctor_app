import 'package:doctorq/View/DOCTORSIDEAPP/BottomNavigationBar/appbottomNavigationbar.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CongratsScreen extends StatelessWidget {
  const CongratsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                logo,
                height: 82.h,
                width: 263.w,
              ),
              SizedBox(height: 29.h),
              kText(text: "Congrats!", fontSize: 32.sp, color: blueColor),
              SizedBox(height: 24.h),
              kText(
                  text: "Your account is ready to use",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400),
              SizedBox(height: 245.h),
              AppButton(
                text: "Go to home page",
                onPressed: () {
                  Get.offAll(() => AppBottomNavigationBar());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
