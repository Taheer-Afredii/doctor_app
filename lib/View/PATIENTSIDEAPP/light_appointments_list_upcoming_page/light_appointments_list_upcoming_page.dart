import 'package:collection/collection.dart';
import 'package:doctorq/Widget/doctor_widget/appointmentscreen_container.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/core/utils/formated_date.dart';
import 'package:doctorq/models/appointment_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';
import '../Patient_myappointment_details.dart/patient_myappointment_details.dart';

// ignore_for_file: must_be_immutable
class LightAppointmentsListUpcomingPage extends StatelessWidget {
  TextEditingController autoLayoutVerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    final groupedNotifications =
        groupBy(appointmentlocalList, (obj) => obj.date);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 9,
              child: SearchTextFieldWidget(
                controller: autoLayoutVerController,
                hintText: "Search",
                iconData: Icons.search,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
                child: Container(
              height: 44.h,
              width: 44.w,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(12.r)),
              child: const Icon(
                Icons.filter_list,
                color: blueColor,
              ),
            )),
          ],
        ),
        SizedBox(height: 16.h),
        SizedBox(
            height: 290.h,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: groupedNotifications.length,
              itemBuilder: (BuildContext context, int index) {
                final date = groupedNotifications.keys.toList()[index];
                final notifications = groupedNotifications[date];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(formatDate(DateTime.parse(date.toString()))),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: notifications!.length,
                      itemBuilder: (BuildContext context, int index) {
                        final notification = notifications[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: AppointmentScreenmainContainer(
                            image: notification.picture!,
                            name: notification.name!,
                            time: notification.startTime!,
                            time2: notification.endTime!,
                            callText: notification.callType!,
                            scheduleText: notification.status!,
                            icon: notification.iconData!,
                            sheduleTextColor: notification.status == "Pending"
                                ? blueColor
                                : greenColor,
                            onTap: () {
                              navigateToScreen(
                                  context,
                                  PatientMyAppointmentDetails(
                                      appointment: notification));
                            },
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            )),
      ],
    );
  }
}
