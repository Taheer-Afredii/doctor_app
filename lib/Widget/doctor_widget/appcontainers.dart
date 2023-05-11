import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCenetrTextContainer extends StatelessWidget {
  VoidCallback? onPressed;
  double? width;
  double? height;
  String? text;
  double? radius;
  Color? color;
  Color? textColor;
  double? fontSize;
  FontWeight? fontWeight;

  AppCenetrTextContainer({
    super.key,
    this.width,
    this.height,
    this.text,
    this.onPressed,
    this.radius,
    this.color,
    this.textColor,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        width: width ?? 380.w,
        height: height ?? 55.h,
        decoration: BoxDecoration(
          color: color ?? Colors.transparent,
          borderRadius: BorderRadius.circular(radius ?? 32.r),
        ),
        child: Center(
          child: kText(
            text: text ?? "Sign Up",
            fontSize: fontSize ?? 16.sp,
            color: color ?? blackColor,
            fontWeight: fontWeight ?? FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
