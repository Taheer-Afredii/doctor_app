import 'package:doctorq/View/DOCTORSIDEAPP/HistoryScreen/HistoryScreenTabs/videocall_tab.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/HistoryScreen/HistoryScreenTabs/voicecall_tab.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/HistoryScreen/historyscreen_viewmodel.dart';
import 'package:doctorq/Widget/doctor_widget/tabbar_container.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HistoryScreenViewmodel model = Provider.of<HistoryScreenViewmodel>(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            kText(
                text: "History", fontSize: 26.sp, fontWeight: FontWeight.w600),
            SizedBox(height: 24.h),
            SizedBox(
              height: 45.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabBarContainer(
                    text: "Voice Call",
                    color: model.showVoiceCall ? blueColor : whiteColor,
                    textColor: model.showVoiceCall ? whiteColor : blueColor,
                    width: model.showVoiceCall ? 250.w : 120.w,
                    onPressed: () {
                      model.toggleShowVoiceCall(true);
                    },
                  ),
                  TabBarContainer(
                    text: "Video Call",
                    color: !model.showVoiceCall ? blueColor : whiteColor,
                    textColor: !model.showVoiceCall ? whiteColor : blueColor,
                    width: !model.showVoiceCall ? 250.w : 120.w,
                    onPressed: () {
                      model.toggleShowVoiceCall(false);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            Expanded(
              child: model.showVoiceCall
                  ? const VoiceCallTab()
                  : const VideoCallTab(),
            ),
          ],
        ),
      )),
    );
  }
}
