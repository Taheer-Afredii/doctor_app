import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appointmentscreen_container.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class HistoryReviewScreen extends StatelessWidget {
  HistoryReviewScreen({super.key});
  final TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.h),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 154.w,
                    height: 255.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 80.r,
                            backgroundImage: AssetImage(ImageConstant.friend1),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        kText(text: "Darrell Steward", fontSize: 22.sp),
                        SizedBox(height: 5.h),
                        const DecriptionTextRow(
                          text1: "Voice Call",
                          text2: "Completed",
                          color: greenColor,
                        ),
                        SizedBox(height: 5.h),
                        DecriptionTextRow(
                          text1: "11:00 AM",
                          text2: "12:00 PM",
                          color: lightBlack,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                kLabelText(
                  text: "Email",
                ),
                SizedBox(height: 20.h),
                kText(text: "darrellsteward@yourdomain.com", fontSize: 16.sp),
                SizedBox(height: 36.h),
                kLabelText(
                  text: "Phone",
                ),
                SizedBox(height: 20.h),
                kText(text: "012334437483", fontSize: 16.sp),
                SizedBox(height: 36.h),
                kLabelText(
                  text: "Gender",
                ),
                SizedBox(height: 20.h),
                kText(text: "Male", fontSize: 16.sp),
                SizedBox(height: 36.h),
                kLabelText(
                  text: "Date of Birth",
                ),
                SizedBox(height: 20.h),
                kText(text: "December 27,1995", fontSize: 16.sp),
                SizedBox(height: 39.h),
                //Review row  4.8 *******

                Row(
                  children: [
                    kText(
                        text: "4.8",
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w400),
                    SizedBox(width: 4.w),
                    SmoothStarRating(
                        allowHalfRating: false,
                        onRatingChanged: (v) {},
                        starCount: 5,
                        rating: 12,
                        size: 20.sp,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half_outlined,
                        color: yellowColor,
                        borderColor: yellowColor,
                        spacing: 0.0)
                  ],
                ),
                SizedBox(height: 28.h),
                kText(text: "Reviews", fontSize: 16.sp, color: lightBlack),
                SizedBox(height: 8.h),
                AboutTextFieldWidget(
                  controller: reviewController,
                  hintText: "Write your review here",
                  radius: 20.r,
                ),

                SizedBox(height: 43.h),
                AppTransparentBackButton(
                  text: "Back",
                  onPressed: () {
                    Get.back();
                  },
                ),
                SizedBox(height: 43.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
