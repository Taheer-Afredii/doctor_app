import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/AppearanceSetting/appearance_setting_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profile_setting_widgets.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/Widget/doctor_widget/common_switch_button.dart';
import 'package:doctorq/core/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AppearanceSettingScreen extends StatelessWidget {
  const AppearanceSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppearanceSettingViewModel model =
        Provider.of<AppearanceSettingViewModel>(context);
    ThemeManager themeManager = Provider.of<ThemeManager>(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
        child: Column(
          children: [
            AppHeadingRow(
              text: "Appearance",
            ),
            SizedBox(height: 32.h),
            CommonSwitchButton(
              text: "Dark Mode",
              value: themeManager.themeMode == ThemeMode.dark,
              onChanged: (value) {
                // themeManager.toggleTheme(value);
              },
            ),
            SizedBox(height: 24.h),
            const ProfileSeetingDivider(),
            SizedBox(height: 24.h),
            CommonSwitchButton(
              text: "Blur Background",
              value: model.isBlurBackGround,
              onChanged: (value) {
                model.changeBlurBackGround(value);
              },
            ),
            SizedBox(height: 24.h),
            const ProfileSeetingDivider(),
            SizedBox(height: 24.h),
            CommonSwitchButton(
              text: "Full Screen Mode",
              value: model.isFullScreen,
              onChanged: (value) {
                model.changeFullScreen(value);
              },
            ),
            SizedBox(height: 24.h),
          ],
        ),
      )),
    );
  }
}
