import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarContainer extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final double? width;
  const TabBarContainer({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 45.h,
        width: width ?? 184.w,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24.r),
            border: Border.all(color: blueColor, width: 2)),
        child: Center(
          child: kText(text: text, fontSize: 18.sp, color: textColor),
        ),
      ),
    );
  }
}
