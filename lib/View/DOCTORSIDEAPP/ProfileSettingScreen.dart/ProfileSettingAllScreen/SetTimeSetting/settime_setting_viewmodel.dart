import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../DateAndTimeSelection/dateandtimeselection_viewmodel.dart';

class SetTimeSettingViewModel extends ChangeNotifier {
  String timeofDay = "Morning";
  String selectedDay = '';
  int dayIndex = 0;

  List<String> hours = [
    "9:00 AM",
    "10:00 AM",
    "11:00 AM",
    "12:00 PM",
    "1:00 PM",
    "2:00 PM",
    "3:00 PM",
    "4:00 PM",
    "5:00 PM"
  ];

  List<DateTimeClassModel> dateTimeModel = [];

  void setTimeofDay(String time) {
    timeofDay = time;
    notifyListeners();
  }

  void dateSelected(String day, int index) {
    selectedDay = day;
    dayIndex = index;
    notifyListeners();
  }

  //range Selection
  int startIndex = -1;
  int endIndex = -1;

  void onTap(int index) {
    if (startIndex == -1) {
      startIndex = index;
    } else if (endIndex == -1 && index > startIndex) {
      endIndex = index;
    } else {
      startIndex = index;
      endIndex = -1;
    }
    log("Start Index: $startIndex");
    log("End Index: $endIndex");
    getSelectedHours();
    notifyListeners();
  }

  bool isSelected(int index) {
    if (startIndex == -1) return false;
    if (endIndex == -1) return startIndex == index;
    return index >= startIndex && index <= endIndex;
  }

  void getSelectedHours() {
    if (startIndex != -1 && endIndex != -1) {
      dateTimeModel.insert(
          dayIndex,
          DateTimeClassModel(
            day: selectedDay,
            startTime: hours[startIndex],
            endTime: hours[endIndex],
          ));
    }

    notifyListeners();
  }
}
