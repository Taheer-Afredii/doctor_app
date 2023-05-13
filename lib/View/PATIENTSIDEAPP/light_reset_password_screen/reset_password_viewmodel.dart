import 'package:flutter/material.dart';

class ResetPasswordViewmodel extends ChangeNotifier {
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
}
