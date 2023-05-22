import 'package:animate_do/animate_do.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/AddProfileScreen/addprofile_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profile_setting_widgets.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Profile_Settings_Screen/Patient_Profile_Settings_Notification_Screen/patient_profile_settings_notification_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Profile_Settings_Screen/Patient_UpdateProfileScreen/patient_update_profile.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Profile_Settings_Screen/patient_profile_settings_help_screen/patient_profile_settings_help_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Profile_Settings_Screen/patient_profile_screen_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Profile_Settings_Screen/patient_profile_settings_invite_friends_screen/patient_profile_settings_invite_friends_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_profile_settings_logout_modal_bottomsheet/light_profile_settings_logout_modal_bottomsheet.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/formated_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class PatientProfileSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PatientProfileSettingsScreenViewModel model =
        Provider.of<PatientProfileSettingsScreenViewModel>(context);
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 28.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  kText(text: "Profile", fontSize: 26.sp),
                  ProfileSettingScreenEditProfileIconContainer(
                    iconData: Icons.edit,
                    width: 44.h,
                    height: 44.h,
                    onTap: () {
                      navigateToScreen(context, PatientUpdateProfileScreen());
                    },
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  PatientShowProfileSettingImageWidget(model: model),
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
              CustomDivider(isDark: isDark),
              SizedBox(height: 24.h),
              FadeInUp(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileSeetingScreenMainWidget(
                      iconData: Icons.notifications,
                      text: "Notifications",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PatientProfileSettingsNotificationScreen()),
                        );
                      },
                    ),
                    SizedBox(height: 16.h),
                    CustomDivider(isDark: isDark),
                    SizedBox(height: 16.h),
                    ProfileSeetingScreenMainWidget(
                      iconData: Icons.info,
                      text: "Help",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PatientProfileSettingsHelpScreen()),
                        );
                      },
                    ),
                    SizedBox(height: 16.h),
                    CustomDivider(isDark: isDark),
                    SizedBox(height: 16.h),
                    ProfileSeetingScreenMainWidget(
                      iconData: Icons.people_outline,
                      text: "Invite Friends",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PatientProfileSettingsInviteFriendsScreen()),
                        );
                      },
                    ),
                    SizedBox(height: 16.h),
                    CustomDivider(isDark: isDark),
                    SizedBox(height: 16.h),
                    ProfileSeetingScreenMainWidget(
                      islogout: true,
                      iconData: Icons.logout,
                      color: const Color.fromRGBO(255, 24, 27, 0.1),
                      iconColor: fromHex("#FF1843"),
                      text: "Logout",
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                              top: Radius.circular(24),
                            )),
                            builder: (context) {
                              return LightProfileSettingsLogoutModalBottomsheet();
                            });
                      },
                    ),
                  ],
                ),
              ),
              Spacer(),
              Center(
                child: AppSwitchButton(
                  text: "Switch To Doctor Side",
                  onPressed: () {
                    Get.offAll(AddProfileScreen());
                  },
                ),
              ),
              SizedBox(height: 60.h)
            ],
          ),
        ),
      ),
    );
  }
}

class PatientShowProfileSettingImageWidget extends StatelessWidget {
  PatientShowProfileSettingImageWidget({
    super.key,
    required this.model,
  });
  final PatientProfileSettingsScreenViewModel model;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 50.sp,
            backgroundImage: model.image != null
                ? FileImage(model.image!)
                : AssetImage(ImageConstant.doctor7) as ImageProvider,
          ),
          //edit icon
          Positioned(
            bottom: 5.h,
            right: 0,
            child: InkWell(
              onTap: () {
                model.pickImage(ImageSource.gallery);
              },
              child: CircleAvatar(
                radius: 15.r,
                backgroundColor: lightBlueColor,
                child: Icon(
                  Icons.edit,
                  size: 15.sp,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
