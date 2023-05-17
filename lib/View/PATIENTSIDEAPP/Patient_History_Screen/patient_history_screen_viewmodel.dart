import 'package:flutter/material.dart';

class PatientHistoryScreenViewModel extends ChangeNotifier {
  bool showVoiceCall = true;

  void toggleShowVoiceCall(value) {
    showVoiceCall = value;
    notifyListeners();
  }
}
