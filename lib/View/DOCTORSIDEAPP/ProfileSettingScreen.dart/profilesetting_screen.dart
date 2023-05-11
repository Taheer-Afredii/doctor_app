import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/HelpSetting/help_seeting_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/InviteFriend/invite_friend_screeen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/NotificationSetting/notification_setting_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/SecuritySetting/security_setting_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/ProfileSettingAllScreen/SetTimeSetting/set_time_setting_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profile_setting_widgets.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profilesettingscreen_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/home.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'ProfileSettingAllScreen/AppearanceSetting/appearance_setting_screen.dart';
import 'ProfileSettingAllScreen/SetPriceSetting/set_price_setting_screen.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileSettingScreenViewModel model =
        Provider.of<ProfileSettingScreenViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 28.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    kText(text: "Profile", fontSize: 26.sp),
                    ProfileSettingScreenIconContainer(
                      iconData: Icons.edit,
                      width: 44.h,
                      height: 44.h,
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    ShowProfileSettingImageWidget(model: model),
                    SizedBox(width: 24.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kText(text: "Dr. Dianne Russell", fontSize: 23.sp),
                        SizedBox(height: 8.h),
                        kText(
                            text: "drdiannerussell@yourdomain.com",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: lightBlack),
                        SizedBox(height: 8.h),
                        kText(
                            text: "Indonesia",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: lightBlack),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                const ProfileSeetingDivider(),
                SizedBox(height: 24.h),
                ProfileSeetingScreenMainWidget(
                  iconData: Icons.notifications,
                  text: "Notifications",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const NotificationSettingScreen()),
                    );
                  },
                ),
                SizedBox(height: 16.h),
                const ProfileSeetingDivider(),
                SizedBox(height: 16.h),
                ProfileSeetingScreenMainWidget(
                  iconData: Icons.lock,
                  text: "Security",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecuritySettingScreen()),
                    );
                  },
                ),
                SizedBox(height: 16.h),
                const ProfileSeetingDivider(),
                SizedBox(height: 16.h),
                ProfileSeetingScreenMainWidget(
                  iconData: Icons.tune,
                  text: "Set Pricing",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SetPricingSettingScreen()),
                    );
                  },
                ),
                SizedBox(height: 16.h),
                const ProfileSeetingDivider(),
                SizedBox(height: 16.h),
                ProfileSeetingScreenMainWidget(
                  iconData: Icons.hourglass_empty,
                  text: "Set Timing",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SetTimmingSettingScreen()),
                    );
                  },
                ),
                SizedBox(height: 16.h),
                const ProfileSeetingDivider(),
                SizedBox(height: 16.h),
                ProfileSeetingScreenMainWidget(
                  iconData: Icons.visibility,
                  text: "Appearance",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AppearanceSettingScreen()),
                    );
                  },
                ),
                SizedBox(height: 16.h),
                const ProfileSeetingDivider(),
                SizedBox(height: 16.h),
                ProfileSeetingScreenMainWidget(
                  iconData: Icons.info,
                  text: "Help",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HelpSettingScreen()),
                    );
                  },
                ),
                SizedBox(height: 16.h),
                const ProfileSeetingDivider(),
                SizedBox(height: 16.h),
                ProfileSeetingScreenMainWidget(
                  iconData: Icons.people_outline_rounded,
                  text: "Invite Friends",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InviteFriendScreen()),
                    );
                  },
                ),
                SizedBox(height: 16.h),
                const ProfileSeetingDivider(),
                SizedBox(height: 16.h),
                ProfileSeetingScreenMainWidget(
                  islogout: true,
                  iconData: Icons.logout,
                  color: const Color.fromRGBO(255, 24, 27, 0.1),
                  iconColor: fromHex("#FF1843"),
                  text: "Logout",
                  onTap: () {
                    Get.bottomSheet(
                      const LogoutBottomSheet(),
                    );
                  },
                ),
                SizedBox(height: 50.h),
                Center(
                  child: AppSwitchButton(
                    text: "Switch To Doctor Side",
                    onPressed: () {
                      Get.offAll(Home());
                    },
                  ),
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LogoutBottomSheet extends StatelessWidget {
  const LogoutBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 284.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.r),
          topRight: Radius.circular(40.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  size: 48.sp,
                  color: blueColor,
                )),
            SizedBox(height: 24.h),
            kText(
                text: "Are you sure you want to logout?",
                fontSize: 16.sp,
                color: fromHex("#2C3A4B")),
            SizedBox(height: 37.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: AppTransparentButton(
                    text: "Cancel",
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: AppButton(
                    text: "Yes, Logout",
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
