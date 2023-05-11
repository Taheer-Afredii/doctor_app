import 'package:flutter/material.dart';

class NotificationSettingScreenViewModel extends ChangeNotifier {
  bool isSound = true;
  bool isVibration = true;
  bool isNewTips = true;
  bool isNewService = true;

  void changeSound(bool value) {
    isSound = value;
    notifyListeners();
  }

  void changeVibration(bool value) {
    isVibration = value;
    notifyListeners();
  }

  void changeNewTips(bool value) {
    isNewTips = value;
    notifyListeners();
  }

  void changeNewService(bool value) {
    isNewService = value;
    notifyListeners();
  }
}
