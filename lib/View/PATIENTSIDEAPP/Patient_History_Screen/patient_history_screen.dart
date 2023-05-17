import 'package:doctorq/View/PATIENTSIDEAPP/Patient_History_Screen/PatientHistoryScreenTabs/patient_history_videocall_tab.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_History_Screen/PatientHistoryScreenTabs/patient_history_voicecall_tab.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_History_Screen/patient_history_screen_viewmodel.dart';
import 'package:doctorq/Widget/doctor_widget/tabbar_container.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PatientHistoryScreen extends StatelessWidget {
  const PatientHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PatientHistoryScreenViewModel model =
        Provider.of<PatientHistoryScreenViewModel>(context);
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
                  ? const PatientVoiceCallTab()
                  : const PatientVideoCallTab(),
            ),
          ],
        ),
      )),
    );
  }
}
