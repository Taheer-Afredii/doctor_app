import 'package:collection/collection.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Appointment_screen/patient_appointment_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_myappointment_details.dart/patient_myappointment_details.dart';
import 'package:doctorq/Widget/doctor_widget/appointmentscreen_container.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/formated_date.dart';
import 'package:doctorq/models/appointment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PatientUpcomingTab extends StatelessWidget {
  PatientUpcomingTab({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    PatientAppointmentViewmodel model =
        Provider.of<PatientAppointmentViewmodel>(context);

    final groupedNotifications =
        groupBy(appointmentlocalList, (obj) => obj.date);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              flex: 9,
              child: SearchTextFieldWidget(
                controller: controller,
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
        Flexible(
          fit: FlexFit.loose,
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
                        Text(model.formatDate(DateTime.parse(date.toString()))),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
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
                            navigateToScreenWithoutBottomNav(
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
          ),
        ),
      ],
    );
  }
}
