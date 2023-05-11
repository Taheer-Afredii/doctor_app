import 'package:flutter/material.dart';

class SignUpScreenViewModel extends ChangeNotifier {
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

  bool _isConfirmPasswordVisible = true;
  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible;
  void toggleConfirmPasswordVisibility() {
    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    notifyListeners();
  }

  bool checkBoxValue = false;

  void checkBoxValueChange(bool value) {
    checkBoxValue = value;
    notifyListeners();
  }
}
