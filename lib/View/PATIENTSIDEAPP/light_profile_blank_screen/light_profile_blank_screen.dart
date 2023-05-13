import 'package:doctorq/View/PATIENTSIDEAPP/light_profile_blank_screen/patient_profile_blank_viewmodel.dart';
import 'package:doctorq/View/PatientSideApp/home.dart';
import 'package:doctorq/Widget/Patientwidgets/boxshadow.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/Widget/doctor_widget/custom_dropdown.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Column(
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
                  ),
                  CustomButton(
                    isDark: isDark,
                    width: size.width,
                    text: "Confirm",
                    margin: getMargin(
                      left: 24,
                      top: 18,
                      right: 24,
                      bottom: 20,
                    ),
                    onTap: () {
                      showDialog(
                        barrierColor: Colors.black.withOpacity(0.5),
                        barrierDismissible: true,
                        context: context,
                        builder: (context) {
                          Future.delayed(Duration(milliseconds: 600), () {
                            Navigator.of(context).pop(true);
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(builder: (context) => Home()),
                                (Route<dynamic> route) => false);
                          });
                          return Dialog(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              elevation: 0.0,
                              child: Center(
                                child: Container(
                                  width: getHorizontalSize(124),
                                  height: getVerticalSize(124),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: isDark
                                          ? ColorConstant.darkBg
                                          : ColorConstant.whiteA700),
                                  child: Center(
                                      child: CircularProgressIndicator(
                                    color: ColorConstant.blueA400,
                                    backgroundColor:
                                        ColorConstant.blueA400.withOpacity(.3),
                                  )),
                                ),
                              ));
                        },
                      );
                    },
                    variant: ButtonVariant.FillBlueA400,
                    fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                    alignment: Alignment.center,
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
