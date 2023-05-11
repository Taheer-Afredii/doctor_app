import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProfileScreenViewModel extends ChangeNotifier {
  final TextEditingController nameController = TextEditingController();
  Object? genderDropDownVal;
  Object? specDropDownVal;
  Object? expDropDownVal;
  List<String> genderDropdownItemList = ["Male", "Female"];
  List<String> specDropdownItemList = ["Ayurvedic", "Homeopathic"];
  List<String> expDropdownItemList = [
    "1 Year",
    "2 Year",
    "3 Year",
    "4 Year",
    "5 Year",
    "6 Year",
    "7 Year",
    "8 Year",
    "9 Year",
    "10 Year"
    "11 Year"
    "12 Year"
  ];

  getGenderDropDownVal(val) {
    genderDropDownVal = val;
    notifyListeners();
  }

  getSpecDropDownVal(val) {
    specDropDownVal = val;
    notifyListeners();
  }

  getExpDropDownVal(val) {
    expDropDownVal = val;
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
