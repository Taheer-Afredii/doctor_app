import 'package:animate_do/animate_do.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/AddProfileScreen/addprofile_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_profile_settings_help_screen/light_profile_settings_help_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_profile_settings_invite_friends_screen/light_profile_settings_invite_friends_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_profile_settings_logout_modal_bottomsheet/light_profile_settings_logout_modal_bottomsheet.dart';
import 'package:doctorq/View/PatientSideApp/light_profile_settings_notification_screen/light_profile_settings_notification_screen.dart';
import 'package:doctorq/View/PatientSideApp/update_profile.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LightProfileSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                top: 26,
              ),
              child: Padding(
                padding: getPadding(
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 4,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //   CommonImageView(
                          //     imagePath: ImageConstant.appLogo,
                          //     height: getVerticalSize(36),
                          //     width: getHorizontalSize(36),
                          //   ),
                          //  HorizontalSpace(width: 20),
                          Text(
                            "Profile",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: getFontSize(
                                26,
                              ),
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UpdateProfileScreen()));
                      },
                      child: Container(
                        padding: getPadding(all: 10),
                        height: getVerticalSize(44),
                        width: getHorizontalSize(44),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorConstant.blueA400.withOpacity(0.1),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.edit,
                          color: ColorConstant.blueA400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: getSize(
                              100.00,
                            ),
                            width: getSize(
                              100.00,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        50.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgImage19,
                                      height: getSize(
                                        100.00,
                                      ),
                                      width: getSize(
                                        100.00,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                CustomIconButton(
                                  // isRtl: isRtl,
                                  height: 20,
                                  width: 20,
                                  margin: getMargin(
                                    left: 10,
                                    top: 10,
                                  ),
                                  variant: IconButtonVariant.FillBlueA400,
                                  shape: IconButtonShape.CircleBorder10,
                                  padding: IconButtonPadding.PaddingAll3,
                                  alignment: Alignment.bottomRight,
                                  child: Image.asset(
                                    ImageConstant.edit,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          HorizontalSpace(width: 13),
                          Padding(
                            padding: getPadding(
                              top: 11,
                              bottom: 8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Adam Smith",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      23,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 15,
                                    ),
                                    child: Text(
                                      "adam.smith@yourdomain.com",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: isDark
                                            ? Colors.white
                                            : ColorConstant.bluegray700,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Indonesia",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: isDark
                                        ? Colors.white
                                        : ColorConstant.bluegray700,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CustomDivider(isDark: isDark)),
                  SizedBox(height: 24.h),
                  FadeInUp(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LightProfileSettingsNotificationScreen()),
                            );
                          },
                          child: Padding(
                            padding: getPadding(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomIconButton(
                                      // isRtl: isRtl,
                                      height: 56,
                                      width: 56,
                                      variant: IconButtonVariant.FillBlueA40019,
                                      shape: IconButtonShape.CircleBorder10,
                                      padding: IconButtonPadding.PaddingAll16,
                                      child: CommonImageView(
                                        imagePath: ImageConstant.notifications,
                                        color: ColorConstant.blueA400,
                                      ),
                                    ),
                                    HorizontalSpace(width: 16),
                                    Text(
                                      "Notification",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: ColorConstant.blueA400,
                                  size: getSize(20),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h),
                        // CustomDivider(isDark: isDark),
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) =>
                        //               LightProfileSettingsSecurityScreen()),
                        //     );
                        //   },
                        //   child: Padding(
                        //     padding: getPadding(
                        //         top: 16.0,
                        //         bottom: 16.0,
                        //         left: 20,
                        //         right: 20),
                        //     child: Row(
                        //       mainAxisAlignment:
                        //           MainAxisAlignment.spaceBetween,
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       mainAxisSize: MainAxisSize.max,
                        //       children: [
                        //         Row(
                        //           crossAxisAlignment:
                        //               CrossAxisAlignment.center,
                        //           mainAxisSize: MainAxisSize.min,
                        //           children: [
                        //             CustomIconButton(
                        //               isRtl: isRtl,
                        //               height: 56,
                        //               width: 56,
                        //               variant:
                        //                   IconButtonVariant.FillBlueA40019,
                        //               shape: IconButtonShape.CircleBorder10,
                        //               padding:
                        //                   IconButtonPadding.PaddingAll16,
                        //               child: CommonImageView(
                        //                 imagePath: ImageConstant.security,
                        //                 color: ColorConstant.blueA400,
                        //               ),
                        //             ),
                        //             HorizontalSpace(width: 16),
                        //             Text(
                        //               "Security",
                        //               overflow: TextOverflow.ellipsis,
                        //               textAlign: TextAlign.start,
                        //               style: TextStyle(
                        //                 fontSize: getFontSize(
                        //                   16,
                        //                 ),
                        //                 fontFamily: 'Source Sans Pro',
                        //                 fontWeight: FontWeight.w600,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //         Icon(
                        //           Icons.arrow_forward_ios_rounded,
                        //           color: ColorConstant.blueA400,
                        //           size: getSize(20),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   margin: getMargin(
                        //     left: 24,
                        //     right: 24,
                        //   ),
                        //   child: CustomDivider(isDark: isDark),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) =>
                        //               LightProfileSettingsAppearanceScreen()),
                        //     );
                        //   },
                        //   child: Padding(
                        //     padding: getPadding(
                        //         top: 16.0,
                        //         bottom: 16.0,
                        //         left: 20,
                        //         right: 20),
                        //     child: Row(
                        //       mainAxisAlignment:
                        //           MainAxisAlignment.spaceBetween,
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       mainAxisSize: MainAxisSize.max,
                        //       children: [
                        //         Row(
                        //           crossAxisAlignment:
                        //               CrossAxisAlignment.center,
                        //           mainAxisSize: MainAxisSize.min,
                        //           children: [
                        //             CustomIconButton(
                        //               isRtl: isRtl,
                        //               height: 56,
                        //               width: 56,
                        //               variant:
                        //                   IconButtonVariant.FillBlueA40019,
                        //               shape: IconButtonShape.CircleBorder10,
                        //               padding:
                        //                   IconButtonPadding.PaddingAll16,
                        //               child: CommonImageView(
                        //                 imagePath: ImageConstant.appearence,
                        //                 color: ColorConstant.blueA400,
                        //               ),
                        //             ),
                        //             HorizontalSpace(width: 16),
                        //             Text(
                        //               "Appearance",
                        //               overflow: TextOverflow.ellipsis,
                        //               textAlign: TextAlign.start,
                        //               style: TextStyle(
                        //                 fontSize: getFontSize(
                        //                   16,
                        //                 ),
                        //                 fontFamily: 'Source Sans Pro',
                        //                 fontWeight: FontWeight.w600,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //         Icon(
                        //           Icons.arrow_forward_ios_rounded,
                        //           color: ColorConstant.blueA400,
                        //           size: getSize(20),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   margin: getMargin(
                        //     left: 24,
                        //     right: 24,
                        //   ),
                        //   child: CustomDivider(isDark: isDark),
                        // ),
                        // InkWell(
                        //   onTap: () {
                        //     showModalBottomSheet(
                        //         context: context,
                        //         isScrollControlled: true,
                        //         shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.vertical(
                        //           top: Radius.circular(24),
                        //         )),
                        //         builder: (context) {
                        //           return ChangeLanguageScreen();
                        //         });
                        //   },
                        //   child: Padding(
                        //     padding: getPadding(
                        //         top: 16.0,
                        //         bottom: 16.0,
                        //         left: 20,
                        //         right: 20),
                        //     child: Row(
                        //       mainAxisAlignment:
                        //           MainAxisAlignment.spaceBetween,
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       mainAxisSize: MainAxisSize.max,
                        //       children: [
                        //         Row(
                        //           crossAxisAlignment:
                        //               CrossAxisAlignment.center,
                        //           mainAxisSize: MainAxisSize.min,
                        //           children: [
                        //             CustomIconButton(
                        //               isRtl: isRtl,
                        //               height: 56,
                        //               width: 56,
                        //               variant:
                        //                   IconButtonVariant.FillBlueA40019,
                        //               shape: IconButtonShape.CircleBorder10,
                        //               padding:
                        //                   IconButtonPadding.PaddingAll16,
                        //               child: CommonImageView(
                        //                 imagePath: ImageConstant.reviews,
                        //                 color: ColorConstant.blueA400,
                        //               ),
                        //             ),
                        //             HorizontalSpace(width: 16),
                        //             Text(
                        //               "Language",
                        //               overflow: TextOverflow.ellipsis,
                        //               textAlign: TextAlign.start,
                        //               style: TextStyle(
                        //                 fontSize: getFontSize(
                        //                   16,
                        //                 ),
                        //                 fontFamily: 'Source Sans Pro',
                        //                 fontWeight: FontWeight.w600,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //         Icon(
                        //           Icons.arrow_forward_ios_rounded,
                        //           color: ColorConstant.blueA400,
                        //           size: getSize(20),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        // ),

                        Container(
                          margin: getMargin(
                            left: 24,
                            right: 24,
                          ),
                          child: CustomDivider(isDark: isDark),
                        ),
                        SizedBox(height: 16),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LightProfileSettingsHelpScreen()),
                            );
                          },
                          child: Padding(
                            padding: getPadding(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomIconButton(
                                      // isRtl: isRtl,
                                      height: 56,
                                      width: 56,
                                      variant: IconButtonVariant.FillBlueA40019,
                                      shape: IconButtonShape.CircleBorder10,
                                      padding: IconButtonPadding.PaddingAll16,
                                      child: CommonImageView(
                                        imagePath: ImageConstant.help,
                                        color: ColorConstant.blueA400,
                                      ),
                                    ),
                                    HorizontalSpace(width: 16),
                                    Text(
                                      "Help",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: ColorConstant.blueA400,
                                  size: getSize(20),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          margin: getMargin(
                            left: 24,
                            right: 24,
                          ),
                          child: CustomDivider(isDark: isDark),
                        ),
                        SizedBox(height: 16),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LightProfileSettingsInviteFriendsScreen()),
                            );
                          },
                          child: Padding(
                            padding: getPadding(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomIconButton(
                                      // isRtl: isRtl,
                                      height: 56,
                                      width: 56,
                                      variant: IconButtonVariant.FillBlueA40019,
                                      shape: IconButtonShape.CircleBorder10,
                                      padding: IconButtonPadding.PaddingAll16,
                                      child: CommonImageView(
                                        imagePath: ImageConstant.inviteFriends,
                                        color: ColorConstant.blueA400,
                                      ),
                                    ),
                                    HorizontalSpace(width: 16),
                                    Text(
                                      "Invite Friends",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: ColorConstant.blueA400,
                                  size: getSize(20),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Container(
                          margin: getMargin(
                            left: 24,
                            right: 24,
                          ),
                          child: CustomDivider(isDark: isDark),
                        ),
                        SizedBox(height: 16),
                        InkWell(
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
                          child: Padding(
                            padding: getPadding(
                              left: 24,
                              right: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomIconButton(
                                  // isRtl: isRtl,
                                  height: 56,
                                  width: 56,
                                  variant: IconButtonVariant.FillRedA40019,
                                  shape: IconButtonShape.CircleBorder10,
                                  padding: IconButtonPadding.PaddingAll16,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.logout,
                                  ),
                                ),
                                HorizontalSpace(width: 16),
                                Text(
                                  "Logout",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
    );
  }
}
