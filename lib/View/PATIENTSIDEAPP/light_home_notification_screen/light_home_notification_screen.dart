import 'package:collection/collection.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/Notification/notification_screen.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/utils/formated_date.dart';
import 'package:doctorq/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LightHomeNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final groupedNotifications =
        groupBy(notificationsLocalList, (obj) => obj.date);
    // bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 28.h),
              AppHeadingRow(
                text: "Notifications",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 28.h),
              Expanded(
                child: ListView.builder(
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
                          child:
                              Text(formatDate(DateTime.parse(date.toString()))),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: notifications!.length,
                          itemBuilder: (BuildContext context, int index) {
                            final notification = notifications[index];
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: NotificationContainer(
                                image: notification.image!,
                                text: notification.title!,
                                text2: notification.message!,
                              ),
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
