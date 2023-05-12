import 'package:doctorq/View/DOCTORSIDEAPP/SignInScreen/signinscreen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SignupScreen/signupscreen.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/core/constants/assets.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AuthSelectionScreen extends StatelessWidget {
  const AuthSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageConstant.appLogo, height: 200.h, width: 200.w),
            SizedBox(height: 216.h),
            kText(
                text: "Welcome to HolHealth!",
                fontSize: 23.sp,
                fontWeight: FontWeight.w600),
            SizedBox(height: 90.h),
            AppButton(
              text: "Sign Up",
              onPressed: () {
                Get.offAll(() => const SignUpScreen());
              },
            ),
            SizedBox(height: 10.h),
            AppTransparentButton(
              text: "Sign In",
              onPressed: () {
                Get.offAll(() => const SignInScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
