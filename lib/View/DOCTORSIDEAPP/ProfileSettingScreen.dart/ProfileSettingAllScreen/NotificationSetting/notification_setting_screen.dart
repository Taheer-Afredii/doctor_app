import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/NotificationSetting/notification_screen_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profile_setting_widgets.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/Widget/doctor_widget/common_switch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class NotificationSettingScreen extends StatelessWidget {
  const NotificationSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NotificationSettingScreenViewModel model =
        Provider.of<NotificationSettingScreenViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 24.h),
              AppHeadingRow(
                text: "Notification",
              ),
              SizedBox(height: 24.h),
              CommonSwitchButton(
                text: "sound",
                value: model.isSound,
                onChanged: (value) {
                  model.changeSound(value);
                },
              ),
              SizedBox(height: 24.h),
              const ProfileSeetingDivider(),
              SizedBox(height: 24.h),
              CommonSwitchButton(
                text: "Vibrate",
                value: model.isVibration,
                onChanged: (value) {
                  model.changeVibration(value);
                },
              ),
              SizedBox(height: 24.h),
              const ProfileSeetingDivider(),
              SizedBox(height: 24.h),
              CommonSwitchButton(
                text: "New tips available",
                value: model.isNewTips,
                onChanged: (value) {
                  model.changeNewTips(value);
                },
              ),
              SizedBox(height: 24.h),
              const ProfileSeetingDivider(),
              SizedBox(height: 24.h),
              CommonSwitchButton(
                text: "New service available",
                value: model.isNewService,
                onChanged: (value) {
                  model.changeNewService(value);
                },
              ),
              SizedBox(height: 24.h),
              const ProfileSeetingDivider(),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
