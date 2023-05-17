import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Appointment_screen/patient_appointment_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Appointment_screen/widget/patient_past_tab.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Appointment_screen/widget/patient_upcoming_tab.dart';
import 'package:doctorq/Widget/doctor_widget/tabbar_container.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PatientAppointmentScreen extends StatefulWidget {
  @override
  State<PatientAppointmentScreen> createState() =>
      _PatientAppointmentScreenState();
}

class _PatientAppointmentScreenState extends State<PatientAppointmentScreen> {
  bool showUpcomming = true;

  @override
  Widget build(BuildContext context) {
    PatientAppointmentViewmodel model =
        Provider.of<PatientAppointmentViewmodel>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.h),
              kText(text: "Appointments", fontSize: 26.sp),
              SizedBox(height: 28.h),
              SizedBox(
                height: 45.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TabBarContainer(
                      text: "Upcoming",
                      color: model.showUpcoming ? blueColor : whiteColor,
                      textColor: model.showUpcoming ? whiteColor : blueColor,
                      onPressed: () {
                        model.toggleShowUpcoming(true);
                      },
                    ),
                    TabBarContainer(
                      text: "Past",
                      color: !model.showUpcoming ? blueColor : whiteColor,
                      textColor: !model.showUpcoming ? whiteColor : blueColor,
                      onPressed: () {
                        model.toggleShowUpcoming(false);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Flexible(
                fit: FlexFit.loose,
                child: model.showUpcoming
                    ? PatientUpcomingTab()
                    : PatientPastTab(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
