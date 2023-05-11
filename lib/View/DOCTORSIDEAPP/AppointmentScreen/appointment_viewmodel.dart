import 'dart:developer';

import 'package:doctorq/models/appointment_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentViewModel extends ChangeNotifier {
  bool showUpcoming = true;
  AppointmentModel appointmentModel = AppointmentModel();

  void toggleShowUpcoming(value) {
    showUpcoming = value;
    log("showUpcoming: $showUpcoming");
    notifyListeners();
  }

  String formatDate(DateTime date) {
    final now = DateTime.now();
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final tomorrow = DateTime(now.year, now.month, now.day + 1);

    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return 'Today, ${DateFormat.EEEE().add_MMMMd().add_y().format(date)}';
    } else if (date.year == yesterday.year &&
        date.month == yesterday.month &&
        date.day == yesterday.day) {
      return 'Yesterday, ${DateFormat.EEEE().add_MMMMd().add_y().format(date)}';
    } else if (date.year == tomorrow.year &&
        date.month == tomorrow.month &&
        date.day == tomorrow.day) {
      return 'Tomorrow, ${DateFormat.EEEE().add_MMMMd().add_y().format(date)}';
    } else {
      //format date like this: Monday, June 15, 2020
      return DateFormat.EEEE().add_MMMMd().add_y().format(date);
    }
  }
}
