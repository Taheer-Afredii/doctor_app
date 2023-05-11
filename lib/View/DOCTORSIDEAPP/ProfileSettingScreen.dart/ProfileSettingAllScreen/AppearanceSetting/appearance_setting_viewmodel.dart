import 'package:flutter/material.dart';

class AppearanceSettingViewModel extends ChangeNotifier {
  bool isDarkMode = false;
  bool isBlurBackGround = true;
  bool isFullScreen = false;

  void changeDarkMode(bool value) {
    isDarkMode = value;
    notifyListeners();
  }

  void changeBlurBackGround(bool value) {
    isBlurBackGround = value;
    notifyListeners();
  }

  void changeFullScreen(bool value) {
    isFullScreen = value;
    notifyListeners();
  }
}
