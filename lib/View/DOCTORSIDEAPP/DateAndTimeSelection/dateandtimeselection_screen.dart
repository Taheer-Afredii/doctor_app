import 'dart:developer';

import 'package:doctorq/View/DOCTORSIDEAPP/DateAndTimeSelection/dateandtimeselection_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SetPricingScreen/set_pricing_screen.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class DateAndTimeSelectionScreen extends StatefulWidget {
  const DateAndTimeSelectionScreen({super.key});

  @override
  State<DateAndTimeSelectionScreen> createState() =>
      _DateAndTimeSelectionScreenState();
}

class _DateAndTimeSelectionScreenState
    extends State<DateAndTimeSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    DateAndTimeSelectionViewModel model =
        Provider.of<DateAndTimeSelectionViewModel>(context);

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28.h),
            AppHeadingRow(
              text: "Set Date and Timing",
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MorningEveningContainer(
                  text: "Morning",
                  icon: Icons.wb_sunny,
                  onPressed: () {
                    model.setTimeofDay("Morning");
                  },
                ),
                SizedBox(width: 20.w),
                MorningEveningContainer(
                  text: "Evening",
                  icon: Icons.wb_incandescent,
                  onPressed: () {
                    model.setTimeofDay("Evening");
                  },
                ),
              ],
            ),
            SizedBox(height: 35.h),
            kText(
              text: "Choose the Hour",
              fontSize: 14.sp,
              color: const Color(0xff2C3A4B),
            ),
            SizedBox(height: 16.h),
            GridView.builder(
              shrinkWrap: true,
              itemCount: model.hours.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: model.hours.length / 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    model.onTap(index);
                  },
                  child: HourSelectionContainer(
                    text: model.hours[index],
                    textColor:
                        model.isSelected(index) ? Colors.white : blueColor,
                    color: model.isSelected(index) ? blueColor : Colors.white,
                  ),
                );
              },
            ),
            SizedBox(height: 72.h),
            kText(
              text: "Set date",
              fontSize: 16.sp,
              color: const Color(0xff2C3A4B),
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                DaySelectionContainer(
                  index: 0,
                  text1: "Mon",
                  onPressed: () {
                    model.dateSelected('Mon', 0);
                  },
                ),
                DaySelectionContainer(
                  index: 1,
                  text1: "Tue",
                  onPressed: () {
                    model.dateSelected('Tue', 1);
                  },
                ),
                DaySelectionContainer(
                  index: 2,
                  text1: "Wed",
                  onPressed: () {
                    model.dateSelected('Wed', 2);
                  },
                ),
                DaySelectionContainer(
                  index: 3,
                  text1: "Thu",
                  onPressed: () {
                    model.dateSelected('Thu', 3);
                  },
                ),
                DaySelectionContainer(
                  index: 4,
                  text1: "Fri",
                  onPressed: () {
                    model.dateSelected('Fri', 4);
                  },
                ),
                DaySelectionContainer(
                  index: 5,
                  text1: "Sat",
                  onPressed: () {
                    model.dateSelected('Sat', 5);
                  },
                ),
                DaySelectionContainer(
                  index: 6,
                  text1: "Sun",
                  onPressed: () {
                    model.dateSelected('Sun', 6);
                  },
                ),
              ],
            ),
            Spacer(),
            AppButton(
              text: "Confirm",
              onPressed: () {
                for (int i = 0; i < model.dateTimeModel.length; i++) {
                  log(model.dateTimeModel[i].day.toString());
                }
                Get.to(
                  () => const SetPricingcreen(),
                );
              },
            ),
            SizedBox(height: 48.h),
          ],
        ),
      )),
    );
  }
}

class DaySelectionContainer extends StatelessWidget {
  final String text1;
  final int index;

  final VoidCallback onPressed;
  DaySelectionContainer({
    super.key,
    required this.text1,
    required this.onPressed,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    DateAndTimeSelectionViewModel model =
        Provider.of<DateAndTimeSelectionViewModel>(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.w),
        height: 70.h,
        width: 48.w,
        decoration: BoxDecoration(
          color: index == model.dayIndex ? blueColor : Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: blueColor, width: 2.w),
        ),
        child: Center(
            child: kText(
          text: text1,
          fontSize: 14.sp,
          color: index == model.dayIndex ? whiteColor : blueColor,
        )),
      ),
    );
  }
}

class HourSelectionContainer extends StatelessWidget {
  final Color? color;
  final String? text;
  final Color? textColor;
  const HourSelectionContainer({
    super.key,
    this.color,
    this.text,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 118.w,
      height: 43.h,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: blueColor, width: 2.w),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Center(
          child: kText(text: text ?? "", fontSize: 18.sp, color: textColor)),
    );
  }
}

class MorningEveningContainer extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final IconData? icon;
  const MorningEveningContainer(
      {super.key, this.onPressed, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    DateAndTimeSelectionViewModel model =
        Provider.of<DateAndTimeSelectionViewModel>(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 184.w,
        height: 43.h,
        decoration: BoxDecoration(
          color: model.timeofDay == text ? blueColor : Colors.white,
          border: Border.all(color: blueColor, width: 2.w),
          borderRadius: BorderRadius.all(
            Radius.circular(24.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon ?? Icons.wb_sunny,
              size: 20.sp,
              color: model.timeofDay == text ? Colors.white : blueColor,
            ),
            SizedBox(width: 8.w),
            kText(
                text: text ?? "Morning",
                fontSize: 18.sp,
                color: model.timeofDay == text ? Colors.white : blueColor)
          ],
        ),
      ),
    );
  }
}
