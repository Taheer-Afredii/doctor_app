import 'package:collection/collection.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/AppointmentScreen/appointment_viewmodel.dart';
import 'package:doctorq/Widget/doctor_widget/appointmentscreen_container.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/models/appointment_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PastTab extends StatelessWidget {
  PastTab({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppointmentViewModel model = Provider.of<AppointmentViewModel>(context);
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
                controller: controller,
                hintText: "search",
                iconData: Icons.search,
                onChanged: (value) {},
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
            height: 320.h,
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
                      child: Text(
                          model.formatDate(DateTime.parse(date.toString()))),
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
                            onTap: () {},
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
