import 'package:doctorq/Widget/Patientwidgets/boxshadow.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_text_form_field.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/custom_dropdown.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatefulWidget {
  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  List<String> dropdownItemList = ["Male", "Female"];
  Object dropDownVal = 'Male';
  TextEditingController nameController = TextEditingController(
    text: "John Doe",
  );
  TextEditingController emailController = TextEditingController(
    text: "John@gmail.com",
  );
  TextEditingController addressController = TextEditingController(
    text: "New York, USA",
  );
  String? DOB = "1990-01-01";

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: size.width,
                      margin: getMargin(top: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // CommonImageView(
                          //   imagePath: ImageConstant.appLogo,
                          //   height: getVerticalSize(36),
                          //   width: getHorizontalSize(36),
                          // ),
                          HorizontalSpace(width: 10),
                          Text(
                            "Profile",
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
                  Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 24,
                      top: 30,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: isDark
                          ? ColorConstant.darkContainer
                          : ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      border: Border.all(
                        color: isDark
                            ? ColorConstant.darkLine
                            : ColorConstant.bluegray50,
                        width: getHorizontalSize(
                          1.00,
                        ),
                      ),
                      boxShadow: isDark ? customDarkBoxShadow : customBoxShadow,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          // isRtl: isRtl,
                          height: 60,
                          width: 60,
                          margin: getMargin(
                            top: 16,
                          ),
                          variant: IconButtonVariant.FillBlueA40019,
                          shape: IconButtonShape.RoundedBorder28,
                          padding: IconButtonPadding.PaddingAll20,
                          child: CommonImageView(
                            imagePath: ImageConstant.imgAutolayouthor,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 12,
                            bottom: 18,
                          ),
                          child: Text(
                            "Upload Photo Profile",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.bluegray300,
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
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    child: CustomDivider(isDark: isDark),
                  ),
                  Padding(
                    padding: getPadding(left: 24, right: 24, top: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Full Name",
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
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: isDark
                                  ? customDarkBoxShadow
                                  : customBoxShadow),
                          child: CustomTextFormField(
                            controller: nameController,
                            isDark: isDark,
                            width: size.width,
                            focusNode: FocusNode(),
                            hintText: "Full Name",
                            margin: getMargin(
                              top: 11,
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(left: 24, right: 24, top: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Email",
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
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: isDark
                                  ? customDarkBoxShadow
                                  : customBoxShadow),
                          child: CustomTextFormField(
                            controller: emailController,
                            isDark: isDark,
                            width: size.width,
                            focusNode: FocusNode(),
                            hintText: "Email",
                            margin: getMargin(
                              top: 11,
                            ),
                            suffix: Padding(
                              padding: getPadding(left: 20, right: 20),
                              child: Image.asset(
                                ImageConstant.mailOutline,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                                maxWidth: getHorizontalSize(64),
                                maxHeight: getVerticalSize(24)),
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(left: 24, right: 24, top: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 24,
                            right: 24,
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
                        VerticalSpace(height: 10),
                        Container(
                          height: getVerticalSize(65),
                          decoration: BoxDecoration(
                              boxShadow: isDark
                                  ? customDarkBoxShadow
                                  : customBoxShadow),
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
                            fontStyle:
                                DropDownFontStyle.PlusJakartaSansMedium14,
                            onChanged: (value) {
                              setState(() {
                                dropDownVal = value;
                              });
                            },
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
                      ],
                    ),
                  ),
                  VerticalSpace(height: 20),
                  Padding(
                    padding: getPadding(
                      left: 45,
                      right: 44,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Date of Birth",
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
                  GestureDetector(
                    onTap: () async {
                      await _selectDate(context);
                    },
                    child: Container(
                      margin: getMargin(left: 35, right: 35, top: 10),
                      padding:
                          getPadding(left: 10, right: 20, top: 12, bottom: 12),
                      decoration: BoxDecoration(
                          boxShadow:
                              isDark ? customDarkBoxShadow : customBoxShadow,
                          border: Border.all(
                            color: isDark
                                ? ColorConstant.darkLine
                                : ColorConstant.bluegray50,
                          ),
                          color: isDark
                              ? ColorConstant.darkTextField
                              : ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(24)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DOB.toString(),
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: getFontSize(16),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.calendar_today_rounded,
                            color: Color(0xff858C94),
                          )
                        ],
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 23,
                                    right: 23,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Address",
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
                                      Text(
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
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      boxShadow: isDark
                                          ? customDarkBoxShadow
                                          : customBoxShadow),
                                  child: CustomTextFormField(
                                    controller: addressController,
                                    isDark: isDark,
                                    width: size.width,
                                    focusNode: FocusNode(),
                                    hintText: "Address",
                                    margin: getMargin(
                                      top: 11,
                                    ),
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    isDark: isDark,
                    width: size.width,
                    text: "Update",
                    margin: getMargin(
                      left: 24,
                      top: 18,
                      right: 24,
                      bottom: 20,
                    ),
                    onTap: () {
                      //1
                      // Navigator.of(context).pushAndRemoveUntil(
                      //     MaterialPageRoute(
                      //         builder: (context) =>
                      //             LightResetPasswordSuccessfulScreen()),
                      //     (Route<dynamic> route) => false);
                      Navigator.pop(context);
                    },
                    variant: ButtonVariant.FillBlueA400,
                    fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                    alignment: Alignment.center,
                  ),
                  VerticalSpace(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  DateTime? selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(1997, 1, 1),
        firstDate: DateTime(1900, 1),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        DOB = selectedDate.toString();
      });
    }
  }
}
