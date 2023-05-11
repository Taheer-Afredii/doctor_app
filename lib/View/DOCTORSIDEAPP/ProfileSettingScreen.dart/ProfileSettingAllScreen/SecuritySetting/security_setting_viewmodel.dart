import 'package:flutter/material.dart';

class SecuritySettingViewModel extends ChangeNotifier {

  bool isFaceId = true;
  bool isTouchId = true;
  bool isRemember = true;

  void changeFaceId(bool value) {
    isFaceId = value;
    notifyListeners();
  }

  void changeTouchId(bool value) {
    isTouchId = value;
    notifyListeners();
  }

  void changeRemember(bool value) {
    isRemember = value;
    notifyListeners();
  }
}
