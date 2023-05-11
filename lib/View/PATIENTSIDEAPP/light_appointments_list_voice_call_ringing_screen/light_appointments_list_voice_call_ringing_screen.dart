import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/models/appointments_model.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_list_messaging_ended_screen/light_appointments_list_messaging_ended_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_step_2_filled_screen/light_appointments_step_2_filled_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightAppointmentsListVoiceCallRingingScreen extends StatelessWidget {
  AppointmentsModel appointment;
  LightAppointmentsListVoiceCallRingingScreen({required this.appointment});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: size.width,
                margin: getMargin(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(
                      0.5,
                      -3.5616171314629196e-17,
                    ),
                    end: Alignment(
                      0.5,
                      0.9999999999999999,
                    ),
                    colors: [
                      Colors.transparent,
                      Color(0xff00A6A5A2),
                      Color(0xff9B9B9B)
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 48,
                  right: 24,
                  bottom: 48,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 93,
                        top: 3,
                        right: 93,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            94.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage5,
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
                        left: 93,
                        top: 27,
                        right: 93,
                      ),
                      child: Text(
                        "Dr. Albert Flores",
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
                    Padding(
                      padding: getPadding(
                        left: 93,
                        top: 24,
                        right: 93,
                        bottom: 282,
                      ),
                      child: Text(
                        "Ringing ...",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900A2,
                          fontSize: getFontSize(
                            18,
                          ),
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightAppointmentsListMessagingEndedScreen(
                                          appointment: appointment,
                                          contactMethod:
                                              ContactMethods.voiceCall,
                                        )),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  40.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgAutolayouthor80X80,
                                height: getSize(
                                  80.00,
                                ),
                                width: getSize(
                                  80.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 16),
                          CircleAvatar(
                            backgroundColor: ColorConstant.blueA400,
                            radius: 33,
                            child: CommonImageView(
                              imagePath: ImageConstant.call,
                              color: ColorConstant.whiteA700,
                              height: getSize(
                                40.00,
                              ),
                              width: getSize(
                                40.00,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
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
