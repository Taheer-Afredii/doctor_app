import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_list_past_page/light_appointments_list_past_page.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_list_upcoming_page/light_appointments_list_upcoming_page.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class LightAppointmentsListUpcomingTabContainerScreen extends StatefulWidget {
  @override
  State<LightAppointmentsListUpcomingTabContainerScreen> createState() =>
      _LightAppointmentsListUpcomingTabContainerScreenState();
}

class _LightAppointmentsListUpcomingTabContainerScreenState
    extends State<LightAppointmentsListUpcomingTabContainerScreen> {
  bool showUpcomming = true;

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
                          //   imagePath: ImageConstant.appLogo,
                          //   height: getVerticalSize(36),
                          //   width: getHorizontalSize(36),
                          // ),

                          Text(
                            "My Appointments",
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
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            showUpcomming = true;
                          });
                        },
                        child: Container(
                          padding: getPadding(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                            color: showUpcomming
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
                                'Upcoming',
                                style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: getFontSize(18),
                                    fontWeight: FontWeight.w600,
                                    color: showUpcomming
                                        ? Colors.white
                                        : ColorConstant.blueA400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    HorizontalSpace(width: 16),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            showUpcomming = false;
                          });
                        },
                        child: Container(
                          padding: getPadding(top: 8, bottom: 8),
                          decoration: BoxDecoration(
                            color: !showUpcomming
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
                                'Past',
                                style: TextStyle(
                                    fontFamily: 'Source Sans Pro',
                                    fontSize: getFontSize(18),
                                    fontWeight: FontWeight.w600,
                                    color: !showUpcomming
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
                child: showUpcomming
                    ? LightAppointmentsListUpcomingPage()
                    : LightAppointmentsListPastPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
