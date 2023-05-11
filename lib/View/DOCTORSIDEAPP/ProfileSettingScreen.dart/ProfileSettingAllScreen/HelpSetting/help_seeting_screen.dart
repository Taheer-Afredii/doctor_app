import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/ContactUs/contact_us_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/PrivacyPolicy/privacy_policy.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/TermAndCondition/term_and_condition_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profile_setting_widgets.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpSettingScreen extends StatelessWidget {
  const HelpSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
        child: Column(
          children: [
            AppHeadingRow(text: "Help"),
            SizedBox(height: 48.h),
            HelpScreenMainContainer(
              text: "Contact us",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsScreen()),
                );
              },
            ),
            SizedBox(height: 24.h),
            const ProfileSeetingDivider(),
            SizedBox(height: 24.h),
            HelpScreenMainContainer(
              text: "Term & Conditions",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TermAndConditionScreen()),
                );
              },
            ),
            SizedBox(height: 24.h),
            const ProfileSeetingDivider(),
            SizedBox(height: 24.h),
            HelpScreenMainContainer(
              text: "Privacy Policy",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PrivacyPolicy()),
                );
              },
            ),
            SizedBox(height: 24.h),
            const ProfileSeetingDivider(),
            SizedBox(height: 24.h),
          ],
        ),
      )),
    );
  }
}

class HelpScreenMainContainer extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const HelpScreenMainContainer({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          kText(
            text: text,
            fontSize: 16.sp,
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 16.sp,
            color: blueColor,
          ),
        ],
      ),
    );
  }
}
