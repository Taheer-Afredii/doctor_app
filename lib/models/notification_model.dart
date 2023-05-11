import 'package:doctorq/core/utils/image_constant.dart';

class NotificationModel {
  String? title;
  String? message;
  DateTime? date;
  String? image;

  NotificationModel({this.title, this.message, this.date, this.image});
}

//make a list of 8 notification

List<NotificationModel> notificationsLocalList = [
  NotificationModel(
      title: 'Appointment Alarm',
      message:
          'Your appointment will be start after 15 minutes. Stay with app and take care.',
      date: DateTime(2023, 5, 7),
      image: ImageConstant.notif1),
  NotificationModel(
      title: 'Appointment Confirmed',
      message:
          'Appointment confirmed Adam smith Call will be held at 11:00 AM | 26 Mar 22',
      date: DateTime(2023, 5, 7),
      image: ImageConstant.notif2),
  NotificationModel(
      title: 'New Feature Available',
      message: 'Now you can mirror video while on video call',
      date: DateTime(2023, 5, 8),
      image: ImageConstant.notif3),
  NotificationModel(
      title: 'Appointment Alarm',
      message:
          'Your appointment will be start after 15 minutes. Stay with app and take care.',
      date: DateTime(2023, 5, 9),
      image: ImageConstant.notif1),
  NotificationModel(
      title: 'Appointment Confirmed',
      message:
          'Appointment confirmed Adam smith Call will be held at 11:00 AM | 26 Mar 22',
      date: DateTime(2023, 5, 9),
      image: ImageConstant.notif2),
  NotificationModel(
      title: 'Notification 6',
      message: 'This is notification 6',
      date: DateTime(2023, 5, 10),
      image: ImageConstant.notif2),
  NotificationModel(
      title: 'Notification 7',
      message: 'This is notification 7',
      date: DateTime(2023, 5, 10),
      image: ImageConstant.notif2),
  NotificationModel(
      title: 'Notification 8',
      message: 'This is notification 8',
      date: DateTime(2023, 5, 10),
      image: ImageConstant.notif3),
];
