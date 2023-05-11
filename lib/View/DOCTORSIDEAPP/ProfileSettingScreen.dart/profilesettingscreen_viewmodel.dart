import 'dart:io';

import 'package:doctorq/core/utils/imagepicker_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSettingScreenViewModel extends ChangeNotifier {
  File? image;
  void pickImage(ImageSource imageSource) async {
    final pickedImage = await ImagePickerService.pickImage(imageSource);
    if (pickedImage != null) {
      image = pickedImage;
      notifyListeners();
    }
  }
  // Add ViewModel specific code here
}
