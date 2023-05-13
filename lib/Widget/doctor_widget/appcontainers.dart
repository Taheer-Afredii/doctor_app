import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCenetrTextContainer extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final String? text;
  final double? radius;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;

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
        height: height ?? 24.h,
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
