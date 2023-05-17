import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconConatiner extends StatelessWidget {
  final VoidCallback? onTap;
  final String? image;
  final Color? color;
  const IconConatiner({
    super.key,
    this.onTap,
    this.image,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: getPadding(all: 10.r),
        height: getVerticalSize(44.h),
        width: getHorizontalSize(44.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: ColorConstant.blueA400.withOpacity(0.1),
        ),
        child: CommonImageView(
          imagePath: image,
          color: color ?? ColorConstant.blueA400,
        ),
      ),
    );
  }
}
