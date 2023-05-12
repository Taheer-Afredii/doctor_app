import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  VoidCallback? onPressed;
  double? width;
  double? height;
  String? text;

  AppButton({
    this.width,
    this.height,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        width: width ?? 380.w,
        height: height ?? 55.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff77CBFF),
              Color(0xff46BBFF),
            ],
          ),
          borderRadius: BorderRadius.circular(32.r),
        ),
        child: Center(
          child: kText(
            text: text ?? "Sign Up",
            fontSize: 16.sp,
            color: whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class AppTransparentButton extends StatelessWidget {
  VoidCallback? onPressed;
  double? width;
  double? height;
  String? text;
  AppTransparentButton({
    super.key,
    this.width,
    this.height,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        width: width ?? 380.w,
        height: height ?? 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          border: Border.all(
            color: const Color(0xff46BBFF),
            width: 2.w,
          ),
        ),
        child: Center(
          child: kText(
            text: text ?? "Sign Up",
            fontSize: 16.sp,
            color: const Color(0xff46BBFF),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class AppTransparentBackButton extends StatelessWidget {
  VoidCallback? onPressed;
  double? width;
  double? height;
  String? text;
  double? radius;
  AppTransparentBackButton({
    super.key,
    this.width,
    this.height,
    this.text,
    this.onPressed,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        width: width ?? 380.w,
        height: height ?? 55.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 32.r),
          border: Border.all(
            color: const Color(0xff46BBFF),
            width: 2.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.arrow_back,
              color: Color(0xff46BBFF),
            ),
            const SizedBox(
              width: 10,
            ),
            kText(
              text: text ?? "Sign Up",
              fontSize: 16.sp,
              color: const Color(0xff46BBFF),
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}

class SendMessageButton extends StatelessWidget {
  VoidCallback? onPressed;
  double? width;
  double? height;
  String? text;
  SendMessageButton({
    super.key,
    this.width,
    this.height,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        width: width ?? 380.w,
        height: height ?? 55.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff77CBFF),
              Color(0xff46BBFF),
            ],
          ),
          borderRadius: BorderRadius.circular(32.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            kText(
              text: text ?? "Sign Up",
              fontSize: 16.sp,
              color: whiteColor,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.send,
              color: whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}

class AppSwitchButton extends StatelessWidget {
  VoidCallback? onPressed;
  double? width;
  double? height;
  String? text;
  AppSwitchButton({
    super.key,
    this.width,
    this.height,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        width: width ?? 210.w,
        height: height ?? 51.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff77CBFF),
              Color(0xff46BBFF),
            ],
          ),
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              swapIcon,
              width: 17.w,
              height: 16.h,
            ),
            const SizedBox(width: 7),
            kText(
              text: text ?? "Sign Up",
              fontSize: 17.sp,
              color: whiteColor,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
