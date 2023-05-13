import 'dart:developer';

import 'package:flutter/material.dart';

class AppointmentBookScreenViewModel extends ChangeNotifier {
  String day = "Monday";
  int selectedIndex = 0;
  getweekDay(selectedDayIndex) {
    day = weekday[selectedDayIndex];
    selectedIndex = selectedDayIndex;
    log(day);
    notifyListeners();
  }
}

List weekday = [
  "Mon",
  "Tue",
  "Wed",
  "Thu",
  "Fri",
  "Sat",
  "Sun",
];
