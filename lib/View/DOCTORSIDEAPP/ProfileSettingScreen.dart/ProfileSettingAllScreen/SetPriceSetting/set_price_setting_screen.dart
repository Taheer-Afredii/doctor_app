import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/SetPriceSetting/set_price_setting_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SetPricingScreen/set_pricing_screen.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SetPricingSettingScreen extends StatelessWidget {
  const SetPricingSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SetPriceSettingViewModel model =
        Provider.of<SetPriceSettingViewModel>(context);
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
                onPressed: () {},
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
