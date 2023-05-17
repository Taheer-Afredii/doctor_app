import 'package:doctorq/View/PATIENTSIDEAPP/light_profile_blank_screen/patient_profile_blank_viewmodel.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_profile_blank_screen/widgets/show_image_widget.dart';
import 'package:doctorq/View/PatientSideApp/home.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/Widget/doctor_widget/custom_dropdown.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../DOCTORSIDEAPP/AddProfileScreen/addprofile_screen.dart';

class LightProfileBlankScreen extends StatefulWidget {
  @override
  State<LightProfileBlankScreen> createState() =>
      _LightProfileBlankScreenState();
}

class _LightProfileBlankScreenState extends State<LightProfileBlankScreen> {
  List<String> dropdownItemList = ["Male", "Female"];
  Object dropDownVal = 'Male';

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    PatientProfileBlankViewmodel model = PatientProfileBlankViewmodel();
    // bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kText(text: "Profile", fontSize: 26.sp),
                  SizedBox(height: 24.h),
                  model.image == null
                      ? UploadPhotoContainer(
                          onpressed: () {
                            model.pickImage(ImageSource.gallery);
                          },
                        )
                      : PatientShowImageWidget(model: model),
                  SizedBox(height: 24.h),
                  const Divider(
                    color: lightGreyColor,
                    thickness: 1,
                  ),
                  SizedBox(height: 24.h),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      profileLabelText(text: "Full Name"),
                      SizedBox(height: 8.h),
                      AppTextFieldWidget(
                          controller: nameController, hintText: "Full Name"),
                      SizedBox(height: 24),
                      profileLabelText(text: "Email"),
                      SizedBox(height: 8.h),
                      AppTextFieldWidget(
                          controller: nameController, hintText: "Email"),
                      SizedBox(height: 24),
                      profileLabelText(text: "Gender"),
                      SizedBox(height: 8.h),
                      AppCustomDropDown(
                        value: model.genderDropDownVal,
                        hintText: "Gender",
                        // focusNode: FocusNode(),
                        items: model.genderDropdownItemList,
                        onChanged: (val) {
                          model.getGenderDropDownVal(val);
                        },
                      ),
                      SizedBox(height: 24),
                      profileLabelText(text: "Date of Birth"),
                      SizedBox(height: 8.h),
                      PatientDOBContainer(),
                      SizedBox(height: 24),
                      profileLabelText(text: "Address"),
                      SizedBox(height: 8.h),
                      AppTextFieldWidget(
                          controller: nameController, hintText: "Address"),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  AppButton(
                    text: "Confirm",
                    onPressed: () {
                      Get.to(() => Home());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PatientDOBContainer extends StatelessWidget {
  const PatientDOBContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PatientProfileBlankViewmodel model =
        Provider.of<PatientProfileBlankViewmodel>(context);
    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          width: 1,
          color: ColorConstant.bluegray50,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: shadowColor,
              offset: const Offset(0, 4),
              blurRadius: 10,
              spreadRadius: 0.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            kText(
                text: model.selectedDate == null
                    ? "Date Of Birth"
                    : DateFormat.yMMMMd().format(model.selectedDate!),
                fontSize: 16.sp,
                color: model.selectedDate == null ? hintColor : blackColor),
            GestureDetector(
              onTap: () {
                model.selectDate(context);
              },
              child: Icon(
                Icons.calendar_month,
                color: fromHex("#858C94"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
