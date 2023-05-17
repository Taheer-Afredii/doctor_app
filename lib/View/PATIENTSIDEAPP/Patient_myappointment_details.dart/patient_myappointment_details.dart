import 'package:doctorq/View/PATIENTSIDEAPP/Patient_myappointment_details.dart/widgets/myappointment_doctor_details_container.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_myappointment_details.dart/widgets/myappointment_doctorprofile_container.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/patient_videoCall%20RingingScreen/patient_video_call_ringing_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/models/appointment_model.dart';
import 'package:doctorq/View/PatientSideApp/messages_detail_screen/messages_detail_screen.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PatientMyAppointmentDetails extends StatelessWidget {
  MyAppointmentModel appointment;
  PatientMyAppointmentDetails({required this.appointment});
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 24.h),
              AppHeadingRow(text: "My Appointments"),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalSpace(height: 14),
                      MyAppointmentDoctorProfileContainer(
                        isDark: isDark,
                        suffixOnTap: () {
                          Navigator.of(context, rootNavigator: true)
                              .pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PatientVideoCallRingingScreen()),
                                  (route) => false);
                        },
                      ),
                      SizedBox(height: 24.h),
                      MyAppointmentDoctorDetils(isDark: isDark),
                      SizedBox(height: 38.h),
                      kText(
                        text: "Visit Time",
                        fontSize: 18.sp,
                      ),
                      SizedBox(height: 16.h),
                      kText(
                          text: "Morning",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                      SizedBox(height: 14.h),
                      kText(
                          text: "Monday, March 27 2022",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                      SizedBox(height: 14.h),
                      kText(
                          text: "10:00 - 10:30 AM",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                      Container(
                        margin: getMargin(
                          top: 17,
                        ),
                        child: CustomDivider(isDark: isDark),
                      ),
                      SizedBox(height: 17.h),
                      kText(
                        text: "Patient Information",
                        fontSize: 17.sp,
                      ),
                      SizedBox(height: 15.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 80.h,
                                child: kText(
                                    text: "Age",
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              HorizontalSpace(width: 20.w),
                              Text(
                                ":",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    16.sp,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              HorizontalSpace(width: 8.w),
                              Text(
                                "30+",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    16.sp,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          VerticalSpace(height: 8.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: getHorizontalSize(80).w,
                                child: Text(
                                  "Phone",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      16.sp,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              HorizontalSpace(width: 20.w),
                              Text(
                                ":",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    16.sp,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              HorizontalSpace(width: 8.w),
                              Text(
                                "+62857-3637-8399",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    16.sp,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          VerticalSpace(height: 8.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: getHorizontalSize(80.w),
                                child: Text(
                                  "Full Name",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      16.sp,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              HorizontalSpace(width: 20.w),
                              Text(
                                ":",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    16.sp,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              HorizontalSpace(width: 8.w),
                              Text(
                                "Adam Smith",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    16.sp,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: getMargin(
                          top: 24.h,
                        ),
                        child: CustomDivider(isDark: isDark),
                      ),
                      SizedBox(height: 16.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Fee Information",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              18.sp,
                            ),
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Text(
                        "${Constants.currency}5 (Paid)",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.blueA400,
                          fontSize: getFontSize(
                            16.sp,
                          ),
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CustomButton(
                        isDark: isDark,
                        width: size.width,
                        text: "Message Now (Start at 10:00 AM)",
                        margin: getMargin(
                          left: 24.w,
                          top: 20.h,
                          right: 24.w,
                          bottom: 20.h,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MessagesDetailScreen(
                                      appointment: appointment,
                                    )),
                          );
                        },
                        fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 10.h)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
