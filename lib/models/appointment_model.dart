import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

class AppointmentModel {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? date;
  String? startTime;
  String? endTime;
  String? message;
  String? status;
  String? picture;
  String? callType;
  IconData? iconData;

  AppointmentModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.date,
    this.startTime,
    this.endTime,
    this.message,
    this.status,
    this.picture,
    this.callType,
    this.iconData,
  });

  // AppointmentModel.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   name = json['name'];
  //   email = json['email'];
  //   phone = json['phone'];
  //   date = json['date'];
  //   startTime = json['satrtTime'];
  //   endTime = json['endTime'];
  //   message = json['message'];
  //   status = json['status'];
  // }
}

List<AppointmentModel> appointmentlocalList = [
  AppointmentModel(
    id: '1',
    name: 'John Doe',
    email: 'johndoe@example.com',
    phone: '123-456-7890',
    date: '2023-05-10',
    startTime: '10:00 AM',
    endTime: '11:00 AM',
    message: 'Please bring all necessary documents',
    status: 'Pending',
    picture: ImageConstant.friend4,
    callType: 'Video call',
    iconData: Icons.videocam_sharp,
  ),
  AppointmentModel(
    id: '2',
    name: 'Jane Smith',
    email: 'janesmith@example.com',
    phone: '555-555-5555',
    date: '2023-05-10',
    startTime: '2:00 PM',
    endTime: '3:00 PM',
    message: 'Please confirm your attendance',
    status: 'Confirmed',
    picture: ImageConstant.friend4,
    callType: 'voice call',
    iconData: Icons.phone,
  ),
  AppointmentModel(
    id: '3',
    name: 'Bob Johnson',
    email: 'bobjohnson@example.com',
    phone: '555-123-4567',
    date: '2023-05-12',
    startTime: '1:00 PM',
    endTime: '2:00 PM',
    message: 'Please bring your ID',
    status: 'Pending',
    picture: ImageConstant.friend4,
    callType: 'Video call',
    iconData: Icons.videocam_sharp,
  ),
  AppointmentModel(
    id: '4',
    name: 'Alice Thompson',
    email: 'alicethompson@example.com',
    phone: '555-987-6543',
    date: '2023-05-13',
    startTime: '9:00 AM',
    endTime: '10:00 AM',
    message: 'Please arrive on time',
    status: 'Confirmed',
    picture: ImageConstant.friend4,
    callType: 'voice call',
    iconData: Icons.phone,
  ),
  AppointmentModel(
    id: '5',
    name: 'Mark Davis',
    email: 'markdavis@example.com',
    phone: '555-555-1212',
    date: '2023-05-14',
    startTime: '3:00 PM',
    endTime: '4:00 PM',
    message: 'Please bring your resume',
    status: 'Pending',
    picture: ImageConstant.friend4,
    callType: 'Video call',
    iconData: Icons.videocam_sharp,
  ),
  AppointmentModel(
    id: '6',
    name: 'Emily Wilson',
    email: 'emilywilson@example.com',
    phone: '555-121-2121',
    date: '2023-05-15',
    startTime: '11:00 AM',
    endTime: '12:00 PM',
    message: 'Please let us know if you need to reschedule',
    status: 'Confirmed',
    picture: ImageConstant.friend4,
    callType: 'voice call',
    iconData: Icons.phone,
  ),
  AppointmentModel(
    id: '8',
    name: 'Sara Patel',
    email: 'sarapatel@example.com',
    phone: '555-444-3333',
    date: '2023-05-17',
    startTime: '2:00 PM',
    endTime: '3:00 PM',
    message: 'Please wear formal attire',
    status: 'Confirmed',
    picture: ImageConstant.friend4,
    callType: 'voice call',
    iconData: Icons.phone,
  ),
  AppointmentModel(
    id: '9',
    name: 'Mike Jones',
    email: 'mikejones@example.com',
    phone: '555-111-2222',
    date: '2023-05-18',
    startTime: '1:00 PM',
    endTime: '2:00 PM',
    message: 'Please bring your driver license',
    status: 'Pending',
    picture: ImageConstant.friend4,
    callType: 'Video call',
    iconData: Icons.videocam_sharp,
  ),
  AppointmentModel(
    id: '10',
    name: 'Lisa Brown',
    email: 'lisabrown@example.com',
    phone: '555-222-3333',
    date: '2023-05-19',
    startTime: '9:00 AM',
    endTime: '10:00 AM',
    message: 'Please arrive 15 minutes early',
    status: 'Confirmed',
    picture: ImageConstant.friend4,
    callType: 'voice call',
    iconData: Icons.phone,
  ),
];

// ListView.builder(
//               shrinkWrap: true,
//               itemCount: groupedNotifications.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final date = groupedNotifications.keys.toList()[index];
//                 final notifications = groupedNotifications[date];
//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                           model.formatDate(DateTime.parse(date.toString()))),
//                     ),
//                     ListView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: notifications!.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         final notification = notifications[index];
//                         return AppointmentScreenmainContainer(
//                           image: notification.picture!,
//                           name: notification.name!,
//                           time: notification.startTime!,
//                           time2: notification.endTime!,
//                           callText: notification.callType!,
//                           scheduleText: notification.status!,
//                           icon: notification.iconData!,
//                           sheduleTextColor: notification.status == "Pending"
//                               ? blueColor
//                               : greenColor,
//                           onTap: () {},
//                         );
//                       },
//                     ),
//                   ],
//                 );
//               },
//             )