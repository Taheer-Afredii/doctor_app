import 'package:collection/collection.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/HistoryScreen/HistoryReviewScreen/history_review_screen.dart';
import 'package:doctorq/Widget/doctor_widget/historyscreen_main_container.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/formated_date.dart';
import 'package:doctorq/models/appointment_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VideoCallTab extends StatelessWidget {
  const VideoCallTab({super.key});

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
                      Get.to(() => HistoryReviewScreen());
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
