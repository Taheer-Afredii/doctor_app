import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../Patient_CallEndedScreen/patient_call_ended_sccreen.dart';

// ignore: must_be_immutable
class PatientVideoCallRingingScreen extends StatelessWidget {
  PatientVideoCallRingingScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CommonImageView(
                  imagePath: ImageConstant.imgRectangle2,
                  height: size.height,
                  width: size.width,
                ),
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: size.height,
                      width: size.width,
                      margin: getMargin(
                        top: 10,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(
                            0.5,
                            -3.0616171314629196e-17,
                          ),
                          end: Alignment(
                            0.5,
                            0.9999999999999999,
                          ),
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Color(0xffC4C4C4),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        right: 24,
                        bottom: 10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          VerticalSpace(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                    imagePath: ImageConstant.imgImage16,
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
                                  top: 30,
                                  right: 93,
                                ),
                                child: Text(
                                  "Dr. Jenny Wilson",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
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
                                  top: 22,
                                ),
                                child: Text(
                                  "Ringing ...",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700A2,
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: getMargin(left: 24, right: 24, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LightAppointmentsListMessagingEndedScreen()),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        40.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath:
                                          ImageConstant.imgAutolayouthor80X80,
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
                                  radius: 32,
                                  backgroundColor: ColorConstant.blueA400,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.videocam,
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
            ],
          ),
        ),
      ),
    );
  }
}
