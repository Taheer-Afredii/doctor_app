import 'package:flutter/material.dart';

class SetPriceSettingViewModel extends ChangeNotifier {
   String voiceCallPrice = "0";
  String videoCallPrice = "0";

  void setVoiceCallPrice(String price) {
    voiceCallPrice = price;
    notifyListeners();
  }

  void setVideoCallPrice(String price) {
    videoCallPrice = price;
    notifyListeners();
  }
}
