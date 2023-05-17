import 'package:doctorq/View/PATIENTSIDEAPP/PatientAppointment_TimeSelection/patient_appointments_time_selection_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_appointments_review_screen/light_appointments_review_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/patient_appointments_book_screen/widgets/bookappointment_profile_container.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/patient_appointments_book_screen/widgets/doctor_details_container.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/icon_container.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/models/doctors_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';

import 'patient_appointment_book_screen_viewmodel.dart';

// ignore: must_be_immutable
class PatientAppointmentsBookScreen extends StatefulWidget {
  DoctorsModel doctor;
  PatientAppointmentsBookScreen({required this.doctor});
  @override
  State<PatientAppointmentsBookScreen> createState() =>
      _PatientAppointmentsBookScreenState();
}

class _PatientAppointmentsBookScreenState
    extends State<PatientAppointmentsBookScreen> {
  bool isFav = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    PatientAppointmentBookScreenViewModel model =
        Provider.of<PatientAppointmentBookScreenViewModel>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 24.h),
              Row(
                children: [
                  AppHeadingRow(
                    text: widget.doctor.name,
                  ),
                  Spacer(),
                  IconConatiner(
                    onTap: () {},
                    image: ImageConstant.favoriteBorder,
                  ),
                  SizedBox(width: 16.w),
                  IconConatiner(
                      onTap: () async {
                        await Share.share(
                            'check out my website https://example.com');
                      },
                      image: ImageConstant.share),
                ],
              ),
              SizedBox(height: 24.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BookAppointmentProfileContainer(
                        isDark: isDark,
                        // widget: widget,
                      ),
                      SizedBox(height: 24.h),
                      BookAppointmentDoctorDetils(isDark: isDark),
                      SizedBox(height: 24.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: kText(text: "About Doctor", fontSize: 17.sp),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        width: 374.h,
                        child: kText(
                            text:
                                "Dr. Jenny Wilson is the top most Cardiologist specialist in Nanyang Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.",
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp),
                      ),
                      SizedBox(height: 16.h),
                      kText(
                        text: "Working Time",
                        fontSize: 17.sp,
                      ),
                      SizedBox(height: 16.h),
                      kText(
                          text: "Mon - Fri, 09.00 AM - 20.00 PM",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          kText(
                            text: "Reviews",
                            fontSize: 17.sp,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightAppointmentsReviewScreen()),
                              );
                            },
                            child: kText(
                                text: "See All",
                                fontSize: 16.sp,
                                color: blueColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      kText(text: "Make Appointment", fontSize: 16.sp),
                      VerticalSpace(height: 12),
                      SizedBox(
                        height: 80.h,
                        width: 1.sh,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: weekday.length,
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return DaySelectionContainerPateint(
                                selectedIndex: model.selectedIndex,
                                text1: weekday[index],
                                index: index,
                                onPressed: () {
                                  model.getweekDay(index);
                                },
                              );
                            }),
                      ),
                      SizedBox(height: 24.h),
                      CustomButton(
                        isDark: isDark,
                        width: size.width,
                        text: "Book Appointment",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PatientAppointmentTimeSelectionScreen()),
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
      ),
    );
  }
}
