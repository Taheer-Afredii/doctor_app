import 'package:flutter/material.dart';

class PatientSignInViewModel extends ChangeNotifier {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool _isPasswordVisible = true;
  bool get isPasswordVisible => _isPasswordVisible;
  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  bool checkBoxValue = false;

  void checkBoxValueChange(bool value) {
    checkBoxValue = value;
    notifyListeners();
  }
}
