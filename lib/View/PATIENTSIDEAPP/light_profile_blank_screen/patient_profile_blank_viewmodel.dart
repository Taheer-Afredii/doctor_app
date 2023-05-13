import 'dart:io';

import 'package:doctorq/View/PATIENTSIDEAPP/light_profile_settings_screen/change_language.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PatientProfileBlankViewmodel extends ChangeNotifier {
  List<String> genderDropdownItemList = ["Male", "Female"];
  Object? genderDropDownVal;
  getGenderDropDownVal(val) {
    genderDropDownVal = val;
    notifyListeners();
  }

  DateTime? selectedDate;
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      notifyListeners();
    }
  }

  //image picker
  File? image;
  ImagePicker imagePicker = ImagePicker();
  pickImage(ImageSource imageSource) async {
    final img = await imagePicker.pickImage(source: imageSource);
    if (img != null) {
      image = File(img.path);
      notifyListeners();
    }
  }
}
