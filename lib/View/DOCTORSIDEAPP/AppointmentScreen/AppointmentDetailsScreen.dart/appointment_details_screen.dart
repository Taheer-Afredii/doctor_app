import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appointmentscreen_container.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  const AppointmentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 160.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kText(text: "Darrell Steward", fontSize: 22.sp),
                      SizedBox(height: 5.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: const DecriptionTextRow(
                          text1: "Voice Call",
                          text2: "Scheduled",
                        ),
                      ),
                      SizedBox(height: 5.h),
                      const DecriptionTextRow(
                        text1: "Today,11:00 AM",
                        text2: "12:00 PM",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 210.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kLabelText(
                      text: "Email",
                    ),
                    SizedBox(height: 20.h),
                    kText(
                        text: "darrellsteward@yourdomain.com", fontSize: 16.sp),
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
                    SizedBox(height: 64.h),
                  ],
                ),
              ),
              AppTransparentBackButton(
                text: "Back",
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
