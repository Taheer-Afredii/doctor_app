import 'package:doctorq/View/PatientSideApp/light_appointments_step_3_filled_screen/light_appointments_step_3_filled_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class LightAppointmentsStep2FilledScreen extends StatefulWidget {
  @override
  State<LightAppointmentsStep2FilledScreen> createState() =>
      _LightAppointmentsStep2FilledScreenState();
}

enum ContactMethods { message, voiceCall, videoCall }

class _LightAppointmentsStep2FilledScreenState
    extends State<LightAppointmentsStep2FilledScreen> {
  bool isMorning = true;
  int selectedTime = 0;
  ContactMethods? contactMethod;

  List<String> availableTimesList = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '13:00 PM',
    '14:00 PM',
    '15:00 PM',
    '16:00 PM',
    '17:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                top: 20,
              ),
              child: Padding(
                padding: getPadding(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    BkBtn(),
                    HorizontalSpace(width: 20),
                    Text(
                      "Book Appointment",
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
            ),
            VerticalSpace(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 14,
                          right: 24,
                        ),
                        child: Text(
                          "Monday, March 25 2022",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: isDark
                                ? Colors.white
                                : ColorConstant.bluegray800,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 16,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomButton(
                            isDark: isDark,
                            width: 184,
                            text: "Morning",
                            onTap: () {
                              setState(() {
                                isMorning = true;
                              });
                            },
                            variant: isMorning
                                ? ButtonVariant.FillBlueA400
                                : ButtonVariant.OutlineBlueA400,
                            shape: ButtonShape.RoundedBorder21,
                            padding: ButtonPadding.PaddingAll12,
                            fontStyle: isMorning
                                ? ButtonFontStyle.SourceSansProSemiBold18
                                : ButtonFontStyle
                                    .SourceSansProSemiBold18BlueA400,
                            prefixWidget: Container(
                              margin: getMargin(
                                  right: isRtl ? 0 : 10, left: isRtl ? 10 : 0),
                              child: Image.asset(
                                ImageConstant.morning,
                                color: isMorning
                                    ? Colors.white
                                    : ColorConstant.blueA400,
                                width: getHorizontalSize(20),
                                height: getVerticalSize(20),
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 12),
                          CustomButton(
                            isDark: isDark,
                            width: 184,
                            text: "Evening",
                            onTap: () {
                              setState(() {
                                isMorning = false;
                              });
                            },
                            variant: isMorning
                                ? ButtonVariant.OutlineBlueA400
                                : ButtonVariant.FillBlueA400,
                            shape: ButtonShape.RoundedBorder21,
                            padding: ButtonPadding.PaddingAll12,
                            fontStyle: isMorning
                                ? ButtonFontStyle
                                    .SourceSansProSemiBold18BlueA400
                                : ButtonFontStyle.SourceSansProSemiBold18,
                            prefixWidget: Container(
                              margin: getMargin(
                                  right: isRtl ? 0 : 10, left: isRtl ? 10 : 0),
                              child: Image.asset(
                                ImageConstant.evening,
                                color: isMorning
                                    ? ColorConstant.blueA400
                                    : Colors.white,
                                width: getHorizontalSize(20),
                                height: getVerticalSize(20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 20,
                          bottom: 10,
                          right: 20,
                        ),
                        child: Text(
                          "Choose the Hour",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray800,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getVerticalSize(240),
                      child: GridView.builder(
                        padding: getPadding(
                          left: 20,
                          top: 10,
                          right: 20,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.767,
                          // mainAxisExtent: getVerticalSize(
                          //   158.00,
                          // ),
                          crossAxisCount: 3,
                          mainAxisSpacing: getHorizontalSize(
                            10.00,
                          ),
                          crossAxisSpacing: getHorizontalSize(
                            10.00,
                          ),
                        ),
                        itemCount: availableTimesList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedTime = index;
                              });
                            },
                            child: Container(
                              padding: getPadding(
                                left: 20,
                                top: 8,
                                right: 20,
                                bottom: 8,
                              ),
                              decoration: BoxDecoration(
                                color: selectedTime == index
                                    ? ColorConstant.blueA400
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    21.50,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.blueA400,
                                  width: getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                              ),
                              child: Text(
                                availableTimesList[index],
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: selectedTime == index
                                      ? Colors.white
                                      : ColorConstant.blueA400,
                                  fontSize: getFontSize(
                                    18,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        child: Text(
                          "Fee Information",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.bluegray800,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    VerticalSpace(height: 14),
                    // InkWell(
                    //   onTap: () {
                    //     setState(() {
                    //       contactMethod = ContactMethods.message;
                    //     });
                    //   },
                    //   child: Container(
                    //     margin: getMargin(
                    //       top: 8.0,
                    //       left: 20,
                    //       right: 20,
                    //       bottom: 8.0,
                    //     ),
                    //     padding: getPadding(
                    //         left: 20, right: 20, top: 16, bottom: 16),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(
                    //         getHorizontalSize(
                    //           16.00,
                    //         ),
                    //       ),
                    //       border: Border.all(
                    //           color: contactMethod == ContactMethods.message
                    //               ? Colors.transparent
                    //               : ColorConstant.lightLine),
                    //       gradient: LinearGradient(
                    //         begin: Alignment(
                    //           1,
                    //           1.0024292469024658,
                    //         ),
                    //         end: Alignment(
                    //           0,
                    //           0.0024292469024658203,
                    //         ),
                    //         colors: contactMethod == ContactMethods.message
                    //             ? [
                    //                 ColorConstant.blueA400,
                    //                 ColorConstant.blue300,
                    //               ]
                    //             : [Colors.transparent, Colors.transparent],
                    //       ),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //       crossAxisAlignment: CrossAxisAlignment.center,
                    //       mainAxisSize: MainAxisSize.max,
                    //       children: [
                    //         Row(
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           mainAxisSize: MainAxisSize.max,
                    //           children: [
                    //             CustomIconButton(
                    //               isRtl: isRtl,
                    //               height: 56,
                    //               width: 56,
                    //               variant:
                    //                   contactMethod == ContactMethods.message
                    //                       ? IconButtonVariant.FillWhiteA700
                    //                       : IconButtonVariant.FillBlueA40019,
                    //               shape: IconButtonShape.RoundedBorder28,
                    //               padding: IconButtonPadding.PaddingAll16,
                    //               child: CommonImageView(
                    //                 imagePath: ImageConstant.reviews,
                    //               ),
                    //             ),
                    //             HorizontalSpace(width: 16),
                    //             Column(
                    //               mainAxisSize: MainAxisSize.min,
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               mainAxisAlignment: MainAxisAlignment.start,
                    //               children: [
                    //                 Text(
                    //                   "Messaging",
                    //                   overflow: TextOverflow.ellipsis,
                    //                   textAlign: TextAlign.start,
                    //                   style: TextStyle(
                    //                     color: contactMethod ==
                    //                             ContactMethods.message
                    //                         ? ColorConstant.whiteA700
                    //                         : isDark
                    //                             ? Colors.white
                    //                             : ColorConstant.black900,
                    //                     fontSize: getFontSize(
                    //                       18,
                    //                     ),
                    //                     fontFamily: 'Source Sans Pro',
                    //                     fontWeight: FontWeight.w600,
                    //                   ),
                    //                 ),
                    //                 Padding(
                    //                   padding: getPadding(
                    //                     top: 3,
                    //                   ),
                    //                   child: Text(
                    //                     "Can messaging with doctor",
                    //                     overflow: TextOverflow.ellipsis,
                    //                     textAlign: TextAlign.start,
                    //                     style: TextStyle(
                    //                       color: contactMethod ==
                    //                               ContactMethods.message
                    //                           ? ColorConstant.whiteA700
                    //                           : isDark
                    //                               ? Colors.white
                    //                               : ColorConstant.lightGrayText,
                    //                       fontSize: getFontSize(
                    //                         14,
                    //                       ),
                    //                       fontFamily: 'Source Sans Pro',
                    //                       fontWeight: FontWeight.w400,
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //         Text(
                    //           "${Constants.currency}5",
                    //           overflow: TextOverflow.ellipsis,
                    //           textAlign: TextAlign.start,
                    //           style: TextStyle(
                    //             color: contactMethod == ContactMethods.message
                    //                 ? ColorConstant.whiteA700
                    //                 : ColorConstant.blueA400,
                    //             fontSize: getFontSize(
                    //               23,
                    //             ),
                    //             fontFamily: 'Source Sans Pro',
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          contactMethod = ContactMethods.voiceCall;
                        });
                      },
                      child: Container(
                        margin: getMargin(
                          top: 8.0,
                          left: 20,
                          right: 20,
                          bottom: 8.0,
                        ),
                        padding: getPadding(
                            left: 20, right: 20, top: 16, bottom: 16),
                        decoration: BoxDecoration(
                          color: contactMethod == ContactMethods.voiceCall
                              ? Color(0xffB2E2FF)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                          border: Border.all(
                              color: contactMethod == ContactMethods.voiceCall
                                  ? Colors.transparent
                                  : ColorConstant.lightLine),
                          // gradient: LinearGradient(
                          //   begin: Alignment.topCenter,
                          //   end: Alignment.bottomCenter,
                          //   colors: contactMethod == ContactMethods.voiceCall
                          //       ? [
                          //           Color(0xffEBEEF2),
                          //           Color(0xffB2E2FF),
                          //         ]
                          //       : [Colors.transparent, Colors.transparent],
                          // ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomIconButton(
                                  // isRtl: isRtl,
                                  height: 56,
                                  width: 56,
                                  variant: IconButtonVariant.FillBlueA40019,
                                  shape: IconButtonShape.RoundedBorder28,
                                  padding: IconButtonPadding.PaddingAll16,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.call,
                                    color: ColorConstant.blueA400,
                                  ),
                                ),
                                HorizontalSpace(width: 16),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Voice Call",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "Can make a voice call with doctor",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: contactMethod ==
                                                  ContactMethods.voiceCall
                                              ? ColorConstant.gray90099
                                              : isDark
                                                  ? Colors.white
                                                  : ColorConstant.lightGrayText,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Source Sans Pro',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "${Constants.currency}10",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.blueA400,
                                fontSize: getFontSize(
                                  23,
                                ),
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: () {
                        setState(() {
                          contactMethod = ContactMethods.videoCall;
                        });
                      },
                      child: Container(
                        margin: getMargin(
                          top: 8.0,
                          left: 20,
                          right: 20,
                          bottom: 8.0,
                        ),
                        padding: getPadding(
                            left: 20, right: 20, top: 16, bottom: 16),
                        decoration: BoxDecoration(
                          color: contactMethod == ContactMethods.videoCall
                              ? Color(0xffB2E2FF)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                          border: Border.all(
                              color: contactMethod == ContactMethods.videoCall
                                  ? Colors.transparent
                                  : ColorConstant.lightLine),
                          // gradient: LinearGradient(
                          //   begin: Alignment(
                          //     1,
                          //     1.0024292469024658,
                          //   ),
                          //   end: Alignment(
                          //     0,
                          //     0.0024292469024658203,
                          //   ),
                          //   colors: contactMethod == ContactMethods.videoCall
                          //       ? [
                          //           ColorConstant.blueA400,
                          //           ColorConstant.blue300,
                          //         ]
                          //       : [Colors.transparent, Colors.transparent],
                          // ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomIconButton(
                                  // isRtl: isRtl,
                                  height: 56,
                                  width: 56,
                                  variant: IconButtonVariant.FillBlueA40019,
                                  shape: IconButtonShape.RoundedBorder28,
                                  padding: IconButtonPadding.PaddingAll16,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.videocam,
                                    color: ColorConstant.blueA400,
                                  ),
                                ),
                                HorizontalSpace(width: 16),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Video Call",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        // color: contactMethod ==
                                        //         ContactMethods.videoCall
                                        //     ? ColorConstant.whiteA700
                                        //     : isDark
                                        //         ? Colors.white
                                        //         : ColorConstant.black900,
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                      ),
                                      child: Text(
                                        "Can make a video call with doctor",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: contactMethod ==
                                                  ContactMethods.videoCall
                                              ? ColorConstant.gray900A2
                                              : isDark
                                                  ? Colors.white
                                                  : ColorConstant.lightGrayText,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Source Sans Pro',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "${Constants.currency}20",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.blueA400,
                                fontSize: getFontSize(
                                  23,
                                ),
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                      isDark: isDark,
                      width: size.width,
                      text: "Next",
                      margin: getMargin(
                        left: 20,
                        right: 20,
                        bottom: 10,
                        top: 10,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LightAppointmentsStep3FilledScreen(
                                    contactMethod: contactMethod!,
                                  )),
                        );
                      },
                      fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
