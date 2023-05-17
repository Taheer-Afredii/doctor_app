import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppointmentDoctorDetils extends StatelessWidget {
  const MyAppointmentDoctorDetils({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 157.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isDark ? ColorConstant.darkContainer : ColorConstant.whiteA700,
          border: Border.all(color: ColorConstant.blueA400),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MyApointmentDoctorDetailcolumn(
              image: ImageConstant.patients,
              text1: "5000+",
              text2: "Patients",
            ),
            MyApointmentDoctorDetailcolumn(
              image: ImageConstant.person,
              text1: "15+",
              text2: "Years Experiense",
            ),
            MyApointmentDoctorDetailcolumn(
              image: ImageConstant.reviews,
              text1: "3800+",
              text2: "Reviews",
            ),
          ],
        ));
  }
}

class MyApointmentDoctorDetailcolumn extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  const MyApointmentDoctorDetailcolumn({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          // isRtl: isRtl,
          height: 44,
          width: 44,
          variant: IconButtonVariant.FillBlueA40019,
          shape: IconButtonShape.CircleBorder22,
          child: CommonImageView(
            imagePath: image,
            color: ColorConstant.blueA400,
          ),
        ),
        SizedBox(height: 14.h),
        kText(text: text1, fontSize: 16.sp, color: ColorConstant.blueA400),
        SizedBox(height: 14.h),
        kText(text: text2, fontSize: 14.sp, fontWeight: FontWeight.w400),
      ],
    );
  }
}
