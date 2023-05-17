import 'package:doctorq/View/PATIENTSIDEAPP/PatientPaymentDetils/patient_payment_details.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/boxshadow.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_text_form_field.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/Widget/doctor_widget/custom_dropdown.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PatientAppointmentBookingDetails extends StatefulWidget {
  @override
  State<PatientAppointmentBookingDetails> createState() =>
      _PatientAppointmentBookingDetailsState();
}

class _PatientAppointmentBookingDetailsState
    extends State<PatientAppointmentBookingDetails> {
  List<String> ageRanges = [
    '10+',
    '20+',
    '30+',
    '40+',
    '50+',
  ];
  int selectedAge = 0;
  List<String> dropdownItemList = ["Gender", "Male", "Female"];
  Object? dropDownVal;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    BkBtn(),
                    HorizontalSpace(width: 20),
                    Text(
                      "Patient Details",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          26,
                        ),
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        profileLabelText(text: "Full Name", fontSize: 16.sp),
                        SizedBox(height: 10),
                        AppTextFieldWidget(
                            controller: nameController, hintText: "Full Name"),
                        SizedBox(height: 24.h),
                        profileLabelText(
                            text: "Select Your Age Range", fontSize: 16.sp),
                        SizedBox(height: 16.h),
                        Container(
                          height: getVerticalSize(45),
                          child: ListView.separated(
                              // padding: EdgeInsets.symmetric(horizontal: 5.w),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: ageRanges.length,
                              separatorBuilder: (context, index) =>
                                  HorizontalSpace(width: 4),
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedAge = index;
                                    });
                                  },
                                  child: Container(
                                    padding: getPadding(
                                      left: 20,
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: selectedAge == index
                                          ? ColorConstant.blueA400
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          21.50,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.blueA400,
                                        width: getHorizontalSize(
                                          2.00,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          ageRanges[index],
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: selectedAge == index
                                                ? Colors.white
                                                : ColorConstant.blueA400,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Source Sans Pro',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(height: 24.h),
                        profileLabelText(text: "Full Name"),
                        SizedBox(height: 10),
                        AppTextFieldWidget(
                            controller: nameController, hintText: "Full Name"),
                        SizedBox(height: 24.h),
                        profileLabelText(text: "Gender", fontSize: 16.sp),
                        SizedBox(height: 10),
                        AppCustomDropDown(
                          // isDark: isDark,
                          width: size.width,
                          focusNode: FocusNode(),
                          hintText: "Gender",
                          value: dropDownVal,

                          items: dropdownItemList,
                          fontStyle: DropDownFontStyle.PlusJakartaSansMedium14,
                          onChanged: (value) {
                            setState(() {
                              dropDownVal = value;
                            });
                          },
                        ),
                        SizedBox(height: 24.h),
                        profileLabelText(
                            text: "Write your problem", fontSize: 16.sp),
                        SizedBox(height: 10.h),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: isDark
                                  ? customDarkBoxShadow
                                  : customBoxShadow),
                          child: CustomTextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter problem";
                              }
                              return null;
                            },
                            isDark: isDark,
                            width: double.infinity,
                            focusNode: FocusNode(),
                            hintText: "Tell doctor about your problem",
                            shape: TextFormFieldShape.RoundedBorder16,
                            padding: TextFormFieldPadding.PaddingAll18,
                            fontStyle: TextFormFieldFontStyle
                                .SourceSansProSemiBold16Gray900a2,
                            textInputAction: TextInputAction.done,
                            alignment: Alignment.centerLeft,
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 30,
                                right: 14,
                                bottom: 6,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgSearch,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              minWidth: getHorizontalSize(
                                6.00,
                              ),
                              minHeight: getVerticalSize(
                                6.00,
                              ),
                            ),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: size.width,
                  text: "Next",
                  margin: getMargin(
                    left: 20,
                    top: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PatientPaymentDetails()),
                    );
                  },
                  fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
