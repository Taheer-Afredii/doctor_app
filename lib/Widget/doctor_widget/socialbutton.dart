import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String image;
  final String? title;
  SocialButton({
    required this.image,
    this.title,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () {},
      child: Container(
        color: whiteColor,
        height: 57.h,
        width: 178.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 25.h,
              width: 25.w,
            ),
            SizedBox(width: 10.w),
            kText(
                text: title ?? "facebook",
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ],
        ),
      ),
    );
  }
}
