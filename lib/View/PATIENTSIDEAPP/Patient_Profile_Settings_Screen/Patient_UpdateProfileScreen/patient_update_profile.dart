import 'package:doctorq/View/DOCTORSIDEAPP/AddProfileScreen/addprofile_screen.dart';
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

class PatientUpdateProfileScreen extends StatefulWidget {
  @override
  State<PatientUpdateProfileScreen> createState() =>
      _PatientUpdateProfileScreenState();
}

class _PatientUpdateProfileScreenState
    extends State<PatientUpdateProfileScreen> {
  List<String> dropdownItemList = ["Male", "Female"];
  Object? dropDownVal;
  TextEditingController nameController = TextEditingController(
    text: "John Doe",
  );
  TextEditingController emailController = TextEditingController(
    text: "John@gmail.com",
  );
  TextEditingController addressController = TextEditingController(
    text: "New York, USA",
  );
  // String? DOB = "1990-01-01";

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
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
                        profileLabelText(text: "Full Name"),
                        SizedBox(height: 8.h),
                        AppTextFieldWidget(
                            controller: controller, hintText: "Full Name"),
                        SizedBox(height: 24.h),
                        profileLabelText(text: "Email"),
                        SizedBox(height: 8.h),
                        AppTextFieldWidget(
                            controller: controller,
                            hintText: "Email",
                            iconData: Icons.email_outlined),
                        SizedBox(height: 24.h),
                        profileLabelText(text: "Gender"),
                        SizedBox(height: 8.h),
                        AppCustomDropDown(
                          // isDark: isDark,

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
                        profileLabelText(text: "Date of Birth"),
                        SizedBox(height: 8.h),
                        DOBContainer(),
                        SizedBox(height: 24.h),
                        profileLabelText(text: "Address"),
                        SizedBox(height: 8.h),
                        AppTextFieldWidget(
                          controller: controller,
                          hintText: "Address",
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

  // DateTime? selectedDate;
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //       context: context,
  //       initialDate: DateTime(1997, 1, 1),
  //       firstDate: DateTime(1900, 1),
  //       lastDate: DateTime.now());
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //       DOB = selectedDate.toString();
  //     });
  //   }
  // }
}
