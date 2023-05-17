import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAppointmentProfileContainer extends StatelessWidget {
  const BookAppointmentProfileContainer({
    super.key,
    required this.isDark,
    // required this.widget,
  });

  final bool isDark;
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
          SizedBox(width: 20.w),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              kText(text: "Tahir", fontSize: 18.sp),
              Padding(
                padding: EdgeInsets.only(top: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.star_half,
                      color: ColorConstant.blueA400,
                      size: 18.sp,
                    ),
                    HorizontalSpace(width: 4),
                    Text(
                      "4.7 (4692 reviews)",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              kText(
                  text: "Specilization",
                  maxLines: 2,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400)
            ],
          ),
        ],
      ),
    );
  }
}
