import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/SecuritySetting/security_setting_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profile_setting_widgets.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/Widget/doctor_widget/common_switch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SecuritySettingScreen extends StatelessWidget {
  const SecuritySettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SecuritySettingViewModel model =
        Provider.of<SecuritySettingViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            children: [
              AppHeadingRow(
                text: "Security",
              ),
              SizedBox(height: 24.h),
              CommonSwitchButton(
                text: "Face ID",
                value: model.isFaceId,
                onChanged: (value) {
                  model.changeFaceId(value);
                },
              ),
              SizedBox(height: 24.h),
              const ProfileSeetingDivider(),
              SizedBox(height: 24.h),
              CommonSwitchButton(
                text: "Remember me",
                value: model.isRemember,
                onChanged: (value) {
                  model.changeRemember(value);
                },
              ),
              SizedBox(height: 24.h),
              const ProfileSeetingDivider(),
              SizedBox(height: 24.h),
              CommonSwitchButton(
                text: "Touch ID",
                value: model.isTouchId,
                onChanged: (value) {
                  model.changeTouchId(value);
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
