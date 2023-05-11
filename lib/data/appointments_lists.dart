import 'package:doctorq/models/appointments_model.dart';

import '../core/utils/image_constant.dart';

List<AppointmentsModel> pastList = [
  AppointmentsModel(
      img: ImageConstant.doctor1,
      name: "Dr. Ralph Edwards",
      contactMethodIcon: ImageConstant.call,
      status: 'Completed',
      time: '13:00 - 13:30 PM'),
  // AppointmentsModel(
  //     img: ImageConstant.doctor2,
  //     name: "Dr. Jane Cooper",
  //     contactMethodIcon: ImageConstant.reviews,
  //     status: 'Completed',
  //     time: '09:00 - 09:30 AM'),
  AppointmentsModel(
      img: ImageConstant.doctor3,
      name: "Dr. Dianne Russell",
      contactMethodIcon: ImageConstant.videocam,
      status: 'Completed',
      time: '15:00 - 15:30 PM'),
  AppointmentsModel(
      img: ImageConstant.doctor4,
      name: "Dr. Albert Flores",
      contactMethodIcon: ImageConstant.call,
      status: 'Declined',
      time: '11:00 - 11:30 AM'),
];

List<AppointmentsModel> upcommingList = [
  AppointmentsModel(
      img: ImageConstant.doctor4,
      name: "Dr. Albert Flores",
      contactMethodIcon: ImageConstant.call,
      status: 'Scheduled',
      time: '11:00 - 11:30 AM'),
  // AppointmentsModel(
  //     img: ImageConstant.doctor2,
  //     name: "Dr. Jane Cooper",
  //     contactMethodIcon: ImageConstant.reviews,
  //     status: 'Scheduled',
  //     time: '09:00 - 09:30 AM'),
  AppointmentsModel(
      img: ImageConstant.doctor1,
      name: "Dr. Ralph Edwards",
      contactMethodIcon: ImageConstant.call,
      status: 'Scheduled',
      time: '13:00 - 13:30 PM'),
  AppointmentsModel(
      img: ImageConstant.doctor3,
      name: "Dr. Dianne Russell",
      contactMethodIcon: ImageConstant.videocam,
      status: 'Scheduled',
      time: '15:00 - 15:30 PM'),
];
