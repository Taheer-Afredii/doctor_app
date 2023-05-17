import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/icon_container.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppointmentDoctorProfileContainer extends StatelessWidget {
  const MyAppointmentDoctorProfileContainer({
    super.key,
    required this.isDark,
    required this.suffixOnTap,
    // required this.widget,
  });

  final bool isDark;
  final VoidCallback suffixOnTap;
  // final LightAppointmentsBookScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: isDark ? ColorConstant.darkTextField : ColorConstant.whiteA700,
        border: Border.all(color: ColorConstant.bluegray50, width: 1.w),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  bottomLeft: Radius.circular(12.r),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.doctor1,
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: BoxDecoration(
                    color: ColorConstant.blueA400,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                    ),
                  ),
                  child: Icon(
                    Icons.videocam_rounded,
                    color: ColorConstant.whiteA700,
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kText(text: "Dahir", fontSize: 18.sp),
              SizedBox(height: 6.h),
              MyAppointmentDecriptionTextRow(
                text1: "voice call",
                text2: "sheduled",
                color: fromHex("#2E5AAC"),
              ),
              SizedBox(height: 6.h),
              MyAppointmentDecriptionTextRow(
                text1: "10:30",
                text2: "12:30 PM",
                color: ColorConstant.gray900,
                fontSizeText1: 14.sp,
                fontSizeText2: 14.sp,
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: GestureDetector(
              onTap: suffixOnTap,
              child: IconConatiner(
                  image: ImageConstant.videocam, color: fromHex("#46BBFF")),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppointmentDecriptionTextRow extends StatelessWidget {
  final String text1;
  final String text2;
  final Color? color;
  final double? fontSizeText1;
  final double? fontSizeText2;
  const MyAppointmentDecriptionTextRow({
    super.key,
    this.color,
    required this.text1,
    required this.text2,
    this.fontSizeText1,
    this.fontSizeText2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kText(
            text: text1,
            fontSize: fontSizeText1 ?? 11.sp,
            color: fromHex("#09101D"),
            fontWeight: FontWeight.w400),
        SizedBox(width: 4.w),
        kText(
            text: "-",
            fontSize: 11.sp,
            color: fromHex("#09101D"),
            fontWeight: FontWeight.w400),
        SizedBox(width: 4.w),
        kText(
            text: text2,
            fontSize: fontSizeText2 ?? 11.sp,
            color: color ?? fromHex("#09101D"),
            fontWeight: FontWeight.w400),
      ],
    );
  }
}
