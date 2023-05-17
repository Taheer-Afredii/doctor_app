import 'package:doctorq/Widget/Patientwidgets/boxshadow.dart';
import 'package:doctorq/Widget/doctor_widget/appointmentscreen_container.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreenMainContainer extends StatelessWidget {
  final String image;
  final String name;
  final String time;
  final String time2;
  final String callText;
  final String scheduleText;
  final IconData icon;
  final Color sheduleTextColor;
  final VoidCallback onTap;
  HistoryScreenMainContainer({
    super.key,
    required this.image,
    required this.name,
    required this.time,
    required this.time2,
    required this.callText,
    required this.scheduleText,
    required this.icon,
    required this.sheduleTextColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 100.h,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: customBoxShadow,
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: fromHex("#EBEEF2")),
          ),
          child: Row(
            children: [
              SizedBox(
                height: 100.h,
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r),
                        ),
                        child: Image.asset(image)),
                    Container(
                      height: 36.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        color: blueColor,
                        //radius only topleft and bottomleft
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12.r),
                        ),
                      ),
                      child: Icon(
                        icon,
                        size: 20.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  kText(text: name, fontSize: 18.sp),
                  SizedBox(height: 10.h),
                  DecriptionTextRow(
                    text1: callText,
                    text2: scheduleText,
                    color: sheduleTextColor,
                  ),
                  SizedBox(height: 10.h),
                  DecriptionTextRow(
                    text1: time,
                    text2: time2,
                    color: fromHex("#545D69"),
                  )
                ],
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: Container(
                  height: 44.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: blueColor,
                    size: 16.sp,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
