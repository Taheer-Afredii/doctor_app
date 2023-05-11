import 'package:doctorq/View/DOCTORSIDEAPP/CongratsScreen/congrats_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SetPricingScreen/setpricingviewmodel.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SetPricingcreen extends StatelessWidget {
  const SetPricingcreen({super.key});

  @override
  Widget build(BuildContext context) {
    SetPricingViewModel model = Provider.of<SetPricingViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: AppHeadingRow(
                  text: "Set Pricing",
                ),
              ),
              SizedBox(height: 60.h),
              kText(text: "Fee Information", fontSize: 16.sp),
              SizedBox(height: 16.h),
              PriceScreenMainWidget(
                heading: "Voice Call",
                subheading: "Can make a voice call with doctor",
                price: model.voiceCallPrice,
                icon: Icons.phone,
                increment: () {
                  model.setVoiceCallPrice(
                      (int.parse(model.voiceCallPrice) + 1).toString());
                },
                decrement: model.voiceCallPrice == "0"
                    ? () {}
                    : () {
                        model.setVoiceCallPrice(
                            (int.parse(model.voiceCallPrice) - 1).toString());
                      },
              ),
              SizedBox(height: 16.h),
              PriceScreenMainWidget(
                heading: "Vedio Call",
                subheading: "Can make a video call with doctor",
                price: model.videoCallPrice,
                icon: Icons.videocam_rounded,
                increment: () {
                  model.setVideoCallPrice(
                      (int.parse(model.videoCallPrice) + 1).toString());
                },
                decrement: model.videoCallPrice == "0"
                    ? () {}
                    : () {
                        model.setVideoCallPrice(
                            (int.parse(model.videoCallPrice) - 1).toString());
                      },
              ),
              const Spacer(),
              AppButton(
                onPressed: () {
                  Get.to(() => const CongratsScreen());
                },
                text: "Confirm",
              ),
              SizedBox(height: 48.h),
            ],
          ),
        ),
      ),
    );
  }
}

class PriceScreenMainWidget extends StatelessWidget {
  String heading;
  String subheading;
  String price;
  IconData icon;
  VoidCallback increment;
  VoidCallback decrement;

  PriceScreenMainWidget({
    super.key,
    required this.heading,
    required this.subheading,
    required this.price,
    required this.icon,
    required this.increment,
    required this.decrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: fromHex("#EBEEF2")),
      ),
      //first circle avatr with phone logo  headin and subheading increament and decreament button with cenetr container showing price
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(width: 16.w),
              CircleAvatar(
                radius: 28.r,
                backgroundColor: shadowColor,
                child: Icon(icon, color: blueColor),
              ),
              SizedBox(width: 16.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  kText(text: heading, fontSize: 18.sp),
                  SizedBox(height: 2.h),
                  SizedBox(
                    height: 42.h,
                    width: 160.w,
                    child: kText(
                        text: subheading,
                        fontSize: 14.sp,
                        color: fromHex("#545D69"),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              IncrAndDecrButton(
                onpressed: decrement,
                icon: Icons.remove,
              ),
              SizedBox(width: 5.w),
              Container(
                height: 22.h,
                width: 72.w,
                decoration: BoxDecoration(
                    border: Border.all(color: blueColor),
                    borderRadius: BorderRadius.circular(14.r)),
                child: Center(
                  child: kText(
                    text: "$price\$",
                    color: blueColor,
                    fontSize: 11.sp,
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              IncrAndDecrButton(
                onpressed: increment,
                icon: Icons.add,
              ),
              SizedBox(width: 16.w),
            ],
          ),
        ],
      ),
    );
  }
}

class IncrAndDecrButton extends StatelessWidget {
  final VoidCallback onpressed;
  final IconData icon;
  const IncrAndDecrButton({
    super.key,
    required this.onpressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: 25.5.h,
        width: 25.5.w,
        decoration: BoxDecoration(
          border: Border.all(color: blueColor),
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            color: blueColor,
            size: 17.sp,
          ),
        ),
      ),
    );
  }
}
