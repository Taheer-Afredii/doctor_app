import 'package:doctorq/View/TestEnumFile.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/models/appointments_model.dart';
import 'package:doctorq/View/PatientSideApp/home.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_list_write_review_filled_screen/light_appointments_list_write_review_filled_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightAppointmentsListMessagingEndedScreen extends StatelessWidget {
  AppointmentsModel appointment;
  CallType callTypes;
  LightAppointmentsListMessagingEndedScreen(
      {required this.appointment, required this.callTypes});
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 158,
                    right: 24,
                  ),
                  child: Text(
                    callTypes == CallType.message
                        ? 'Messaging ended'
                        : callTypes == CallType.voiceCall
                            ? 'VoiceCall ended'
                            : 'Video call ended',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: getFontSize(
                        18,
                      ),
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 16,
                    right: 24,
                  ),
                  child: Text(
                    "30:00 Minutes",
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
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 19,
                    right: 24,
                  ),
                  child: Text(
                    "Recordings have been saved in history",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 44,
                    right: 24,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        100.00,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: appointment.img,
                      height: getSize(
                        188.00,
                      ),
                      width: getSize(
                        188.00,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 27,
                    right: 24,
                  ),
                  child: Text(
                    appointment.name,
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
                ),
                CustomButton(
                  isDark: isDark,
                  width: size.width,
                  text: "Write a Review",
                  margin: getMargin(
                    left: 24,
                    top: 46,
                    right: 24,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LightAppointmentsListWriteReviewFilledScreen(
                                callTypes: callTypes,
                                appointment: appointment,
                              )),
                    );
                  },
                  fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => Home()),
                        (Route<dynamic> route) => false);
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    margin: getMargin(
                      left: 24,
                      top: 12,
                      right: 24,
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          100.00,
                        ),
                      ),
                      color: ColorConstant.whiteA700,
                    ),
                    child: Center(
                      child: Text(
                        "Go to Home",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.blueA400,
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // CustomButton(isDark:isDark,
                    //   width: size.width,
                    //   text: "Go to Dashboard",
                    //   variant: ButtonVariant.OutlineBlueA400,
                    //   alignment: Alignment.centerLeft,
                    // ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
