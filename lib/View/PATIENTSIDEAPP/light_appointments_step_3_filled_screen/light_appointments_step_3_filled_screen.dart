import 'package:doctorq/View/PatientSideApp/light_appointments_step_2_filled_screen/light_appointments_step_2_filled_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_step_4_filled_screen/light_appointments_step_4_filled_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/boxshadow.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_text_form_field.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/custom_dropdown.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightAppointmentsStep3FilledScreen extends StatefulWidget {
  ContactMethods contactMethod;
  LightAppointmentsStep3FilledScreen({required this.contactMethod});

  @override
  State<LightAppointmentsStep3FilledScreen> createState() =>
      _LightAppointmentsStep3FilledScreenState();
}

class _LightAppointmentsStep3FilledScreenState
    extends State<LightAppointmentsStep3FilledScreen> {
  List<String> ageRanges = [
    '10+',
    '20+',
    '30+',
    '40+',
    '50+',
  ];
  int selectedAge = 0;
  List<String> dropdownItemList = ["Gender", "Male", "Female"];
  Object dropDownVal = 'Gender';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: size.width,
                margin: getMargin(
                  top: 20,
                ),
                child: Padding(
                  padding: getPadding(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
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
                ),
              ),
              VerticalSpace(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: getMargin(
                          left: 24,
                          top: 24,
                          right: 24,
                        ),
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      2.00,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 15,
                                          top: 1,
                                          right: 24,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 3,
                                              ),
                                              child: Text(
                                                "Full Name",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant
                                                          .bluegray800A2,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Source Sans Pro',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                bottom: 5,
                                              ),
                                              child: Text(
                                                "*",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.redA700A2,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Source Sans Pro',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 400,
                                      decoration: BoxDecoration(
                                          boxShadow: isDark
                                              ? customDarkBoxShadow
                                              : customBoxShadow),
                                      child: CustomTextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter Name";
                                          }
                                          return null;
                                        },
                                        isDark: isDark,
                                        width: size.width,
                                        focusNode: FocusNode(),
                                        hintText: "Full name",
                                        margin: getMargin(
                                          top: 11,
                                        ),
                                        // variant: TextFormFieldVariant.OutlineBlueA400,
                                        fontStyle: TextFormFieldFontStyle
                                            .SourceSansProSemiBold16Gray900a2,
                                        padding:
                                            TextFormFieldPadding.PaddingAll18,
                                        alignment: Alignment.centerLeft,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 48,
                            top: 24,
                            right: 48,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                ),
                                child: Text(
                                  "Select Your Age Range",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: isDark
                                        ? Colors.white
                                        : ColorConstant.bluegray800A2,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  bottom: 7,
                                ),
                                child: Text(
                                  "*",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.redA700A2,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalSpace(height: 12),
                      Container(
                        height: getVerticalSize(45),
                        child: ListView.separated(
                            padding: getPadding(
                              left: 24,
                              right: 24,
                            ),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 35,
                            top: 24,
                            right: 44,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                ),
                                child: Text(
                                  "Phone Number",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: isDark
                                        ? Colors.white
                                        : ColorConstant.bluegray800A2,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "*",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.redA700A2,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 400,
                        decoration: BoxDecoration(
                            boxShadow:
                                isDark ? customDarkBoxShadow : customBoxShadow),
                        child: CustomTextFormField(
                          isDark: isDark,
                          width: size.width,
                          focusNode: FocusNode(),
                          hintText: "Phone Number",
                          padding: TextFormFieldPadding.PaddingAll18,
                          margin: getMargin(top: 11, left: 20, right: 20),
                          keyboardType: TextInputType.number,
                          // variant: TextFormFieldVariant.OutlineBlueA400,
                          fontStyle: TextFormFieldFontStyle
                              .SourceSansProSemiBold16Gray900a2,
                          alignment: Alignment.centerLeft,
                          suffix: Padding(
                            padding: getPadding(left: 20, right: 20),
                            child: Image.asset(
                              ImageConstant.call,
                              color: Color(0xFF858C94),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                              maxWidth: getHorizontalSize(64),
                              maxHeight: getVerticalSize(24)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 35,
                            top: 24,
                            right: 44,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Gender",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: isDark
                                      ? Colors.white
                                      : ColorConstant.bluegray800A2,
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  bottom: 5,
                                ),
                                child: Text(
                                  "*",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.redA700A2,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(65),
                        margin: getMargin(left: 1, right: 20),
                        decoration: BoxDecoration(
                            boxShadow:
                                isDark ? customDarkBoxShadow : customBoxShadow),
                        child: CustomDropDown(
                          // isDark: isDark,
                          width: size.width,
                          focusNode: FocusNode(),
                          hintText: "Gender",
                          value: dropDownVal,
                          icon: Image.asset(
                            ImageConstant.dropDown,
                            height: getVerticalSize(
                              7.00,
                            ),
                            width: getHorizontalSize(
                              15.00,
                            ),
                          ),
                          items: dropdownItemList,
                          fontStyle: DropDownFontStyle.PlusJakartaSansMedium14,
                          onChanged: (value) {
                            setState(() {
                              dropDownVal = value;
                            });
                          },
                          margin: getMargin(
                            left: 10,
                            right: 10,
                          ),
                          alignment: Alignment.center,
                          prefixConstraints: BoxConstraints(
                            minWidth: getSize(
                              20.00,
                            ),
                            minHeight: getSize(
                              20.00,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: getMargin(
                          left: 24,
                          top: 24,
                          right: 24,
                        ),
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      2.00,
                                    ),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 15,
                                          top: 1,
                                          right: 24,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 3,
                                              ),
                                              child: Text(
                                                "Write Your Problem",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.gray900A2,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Source Sans Pro',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                bottom: 5,
                                              ),
                                              child: Text(
                                                "*",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.redA700A2,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Source Sans Pro',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
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
                                        width: 360,
                                        focusNode: FocusNode(),
                                        hintText:
                                            "Tell doctor about your problem",
                                        margin: getMargin(
                                          top: 11,
                                        ),
                                        shape:
                                            TextFormFieldShape.RoundedBorder16,
                                        padding:
                                            TextFormFieldPadding.PaddingAll18,
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
                          ],
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
                  // if(formKey.currentState!.validate())
                  // {

                  // }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LightAppointmentsStep4FilledScreen(
                              contactMethod: widget.contactMethod,
                            )),
                  );
                },
                fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
