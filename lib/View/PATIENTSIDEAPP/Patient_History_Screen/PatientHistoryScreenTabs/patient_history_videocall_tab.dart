import 'package:collection/collection.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_History_Screen/patient_history_voice_call_details_screen/patient_history_voice_call_details_screen.dart';
import 'package:doctorq/Widget/doctor_widget/historyscreen_main_container.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/formated_date.dart';
import 'package:doctorq/models/appointment_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PatientVideoCallTab extends StatelessWidget {
  const PatientVideoCallTab({super.key});

  @override
  Widget build(BuildContext context) {
    final groupedNotifications =
        groupBy(appointmentlocalList, (obj) => obj.date);
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: groupedNotifications.length,
      itemBuilder: (BuildContext context, int index) {
        final date = groupedNotifications.keys.toList()[index];
        final notifications = groupedNotifications[date];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
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
                  child: HistoryScreenMainContainer(
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
                      Get.to(() => PatientHistoryVoiceCallDetailsScreen());
                    },
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
