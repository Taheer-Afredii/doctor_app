import 'package:doctorq/View/DOCTORSIDEAPP/AddProfileScreen/addprofile_screen_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/DateAndTimeSelection/dateandtimeselection_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/boxshadow.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/Widget/doctor_widget/custom_dropdown.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AddProfileScreen extends StatelessWidget {
  const AddProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AddProfileScreenViewModel model =
        Provider.of<AddProfileScreenViewModel>(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              kText(text: "Profile", fontSize: 26.sp),
              SizedBox(height: 28.h),
              model.image == null
                  ? UploadPhotoContainer(
                      onpressed: () {
                        model.pickImage(ImageSource.gallery);
                      },
                    )
                  : ShowImageWidget(model: model),
              SizedBox(height: 24.h),
              const Divider(
                color: lightGreyColor,
                thickness: 1,
              ),
              SizedBox(height: 24.h),
              profileLabelText(
                text: "Full Name",
              ),
              SizedBox(height: 8.h),
              AppTextFieldWidget(
                  controller: model.nameController, hintText: "Full Name"),
              SizedBox(height: 24.h),
              profileLabelText(
                text: "About",
              ),
              SizedBox(height: 8.h),
              AboutTextFieldWidget(
                  controller: model.nameController, hintText: "about"),
              SizedBox(height: 24.h),
              profileLabelText(
                text: "Email",
              ),
              SizedBox(height: 8.h),
              AppTextFieldWidget(
                  height: 60.h,
                  iconData: Icons.email_outlined,
                  controller: model.nameController,
                  hintText: "Email"),
              SizedBox(height: 24.h),
              profileLabelText(
                text: "Phone NO.",
              ),
              SizedBox(height: 8.h),
              AppTextFieldWidget(
                  controller: model.nameController, hintText: "Phone NO."),
              SizedBox(height: 24.h),
              profileLabelText(
                text: "Gender",
              ),
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
              SizedBox(height: 24.h),
              profileLabelText(
                text: "Specification",
              ),
              SizedBox(height: 8.h),
              AppCustomDropDown(
                value: model.specDropDownVal,
                hintText: "Specification",
                // focusNode: FocusNode(),
                items: model.specDropdownItemList,
                onChanged: (val) {
                  model.getSpecDropDownVal(val);
                },
              ),
              SizedBox(height: 24.h),
              profileLabelText(
                text: "Experience",
              ),
              SizedBox(height: 8.h),
              AppCustomDropDown(
                value: model.expDropDownVal,
                hintText: "Experience",
                // focusNode: FocusNode(),
                items: model.expDropdownItemList,
                onChanged: (val) {
                  model.getExpDropDownVal(val);
                },
              ),
              SizedBox(height: 24.h),
              profileLabelText(
                text: "Date of Birth",
              ),
              SizedBox(height: 8.h),
              const DOBContainer(),
              SizedBox(height: 24.h),
              profileLabelText(
                text: "Clinic Address",
              ),
              SizedBox(height: 8.h),
              AppTextFieldWidget(
                  controller: model.nameController, hintText: "Clinic Address"),
              SizedBox(height: 24.h),
              AppButton(
                text: "Confirm",
                onPressed: () {
                  Get.to(() => const DateAndTimeSelectionScreen());
                },
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      )),
    );
  }
}

class ShowImageWidget extends StatelessWidget {
  const ShowImageWidget({
    super.key,
    required this.model,
  });

  final AddProfileScreenViewModel model;

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

class UploadPhotoContainer extends StatelessWidget {
  final VoidCallback onpressed;
  const UploadPhotoContainer({
    super.key,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138.h,
      width: 383.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFFFFFFF),
          border: Border.all(
            width: 1,
            color: const Color(0xFFE5E5E5),
          ),
          boxShadow: customBoxShadow),
      child: GestureDetector(
        onTap: onpressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30.r,
              backgroundColor: ColorConstant.blueA40019,
              child: Icon(
                Icons.cloud_upload,
                color: lightBlueColor,
                size: 20.sp,
              ),
            ),
            SizedBox(height: 8.h),
            kText(
                text: "Upload Photo Profile",
                fontSize: 14.sp,
                color: const Color(0xFFA5ABB3),
                fontWeight: FontWeight.w600),
          ],
        ),
      ),
    );
  }
}

class DOBContainer extends StatelessWidget {
  const DOBContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AddProfileScreenViewModel model =
        Provider.of<AddProfileScreenViewModel>(context);
    return Container(
      height: 55.h,
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
