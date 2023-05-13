import 'package:collection/collection.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/formated_date.dart';
import 'package:doctorq/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final groupedNotifications =
        groupBy(notificationsLocalList, (obj) => obj.date);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 28.h),
              AppHeadingRow(
                text: "Notifications",
                onPressed: () {},
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

class NotificationContainer extends StatelessWidget {
  final String text;
  final String text2;
  final String image;
  const NotificationContainer({
    super.key,
    required this.text,
    required this.text2,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 75.w,
            height: 73.h,
          ),
          SizedBox(width: 16.w),
          SizedBox(
            width: 240.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kText(text: text, fontSize: 16.sp),
                SizedBox(height: 8.h),
                kText(
                    text: text2,
                    fontSize: 14.sp,
                    color: fromHex("#6D7580"),
                    fontWeight: FontWeight.w400)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
