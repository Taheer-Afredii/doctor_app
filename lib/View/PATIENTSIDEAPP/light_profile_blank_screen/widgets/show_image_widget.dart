import 'package:doctorq/View/PATIENTSIDEAPP/light_profile_blank_screen/patient_profile_blank_viewmodel.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class PatientShowImageWidget extends StatelessWidget {
  const PatientShowImageWidget({
    super.key,
    required this.model,
  });

  final PatientProfileBlankViewmodel model;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 50.sp,
            backgroundImage: FileImage(model.image!),
          ),
          //edit icon
          Positioned(
            bottom: 5.h,
            right: 0,
            child: InkWell(
              onTap: () {
                model.pickImage(ImageSource.gallery);
              },
              child: CircleAvatar(
                radius: 15.r,
                backgroundColor: lightBlueColor,
                child: Icon(
                  Icons.edit,
                  size: 15.sp,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
