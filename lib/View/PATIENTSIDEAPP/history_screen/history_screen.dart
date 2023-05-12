import 'package:doctorq/View/PATIENTSIDEAPP/light_history_messaging_page/light_history_messaging_page.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_history_video_call_page/light_history_video_call_page.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_history_voice_call_page/light_history_voice_call_page.dart';
import 'package:doctorq/View/TestEnumFile.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  CallType calltypes = CallType.voiceCall;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // CommonImageView(
                          //     imagePath: ImageConstant.appLogo,
                          //     height: getVerticalSize(36),
                          // width: getHorizontalSize(36),
                          //     ),
                          //     HorizontalSpace(width: 20),
                          Text(
                            "History",
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
                      // Container(
                      //   padding: getPadding(all: 10),
                      //   height: getVerticalSize(44),
                      //   width: getHorizontalSize(44),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(12),
                      //     color: ColorConstant.blueA400.withOpacity(0.1),
                      //   ),
                      //   child: Icon(
                      //     Icons.add_circle_outline_rounded,
                      //     color: ColorConstant.blueA400,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                height: getVerticalSize(
                  45.00,
                ),
                margin: getMargin(left: 24, right: 24, top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Expanded(
                    //   child: InkWell(
                    //     onTap: () {
                    //       setState(() {
                    //         contactMethod = ContactMethods.message;
                    //       });
                    //     },
                    //     child: Container(
                    //       padding: getPadding(top: 8, bottom: 8),
                    //       decoration: BoxDecoration(
                    //         color: contactMethod == ContactMethods.message
                    //             ? ColorConstant.blueA400
                    //             : Colors.transparent,
                    //         borderRadius: BorderRadius.circular(
                    //           getHorizontalSize(
                    //             24.0,
                    //           ),
                    //         ),
                    //         border: Border.all(
                    //           color: ColorConstant.blueA400,
                    //           width: getHorizontalSize(
                    //             1.00,
                    //           ),
                    //         ),
                    //       ),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           Text(
                    //             'Messaging',
                    //             style: TextStyle(
                    //                 fontFamily: 'Source Sans Pro',
                    //                 fontSize: getFontSize(18),
                    //                 fontWeight: FontWeight.w600,
                    //                 color:
                    //                     contactMethod == ContactMethods.message
                    //                         ? Colors.white
                    //                         : ColorConstant.blueA400),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    HorizontalSpace(width: 12),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            calltypes = CallType.voiceCall;
                          });
                        },
                        child: Container(
                          padding: getPadding(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                            color: calltypes == CallType.voiceCall
                                ? ColorConstant.blueA400
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                24.0,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.blueA400,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Voice Call',
                                style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: getFontSize(18),
                                    fontWeight: FontWeight.w600,
                                    color: calltypes == CallType.voiceCall
                                        ? Colors.white
                                        : ColorConstant.blueA400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    HorizontalSpace(width: 12),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            calltypes = CallType.videoCall;
                          });
                        },
                        child: Container(
                          padding: getPadding(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                            color: calltypes == CallType.videoCall
                                ? ColorConstant.blueA400
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                24.0,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.blueA400,
                              width: getHorizontalSize(
                                1.00,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Video Call',
                                style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: getFontSize(18),
                                    fontWeight: FontWeight.w600,
                                    color: calltypes == CallType.videoCall
                                        ? Colors.white
                                        : ColorConstant.blueA400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            VerticalSpace(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: calltypes == CallType.message
                    ? LightHistoryMessagingPage()
                    : calltypes == CallType.voiceCall
                        ? LightHistoryVoiceCallPage()
                        : LightHistoryVideoCallPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
