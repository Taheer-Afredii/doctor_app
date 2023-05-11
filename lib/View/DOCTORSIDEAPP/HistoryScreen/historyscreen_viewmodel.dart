import 'package:flutter/material.dart';

class HistoryScreenViewmodel extends ChangeNotifier {
  bool showVoiceCall = true;

  void toggleShowVoiceCall(value) {
    showVoiceCall = value;
    notifyListeners();
  }
}
