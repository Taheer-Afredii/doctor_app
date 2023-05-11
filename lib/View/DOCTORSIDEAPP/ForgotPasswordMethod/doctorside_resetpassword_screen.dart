import 'package:doctorq/View/DOCTORSIDEAPP/CongratsScreen/congrats_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_text_form_field.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

class DoctorSideResetPasswordScreen extends StatefulWidget {
  @override
  State<DoctorSideResetPasswordScreen> createState() =>
      _DoctorSideResetPasswordScreen();
}

class _DoctorSideResetPasswordScreen
    extends State<DoctorSideResetPasswordScreen> {
  bool checkbox = false;
  bool obscure1 = true;
  bool obscure2 = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      margin: getMargin(top: 35, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          BkBtn(),
                          Padding(
                            padding: getPadding(
                              left: 20,
                            ),
                            child: Text(
                              "Reset Password",
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
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 40,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Create a new password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w400,
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
                        top: 26,
                        right: 24,
                      ),
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
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
                                      left: 24,
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
                                            "New Password",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color:
                                                  ColorConstant.bluegray800A2,
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
                                            left: 1,
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
                                  CustomTextFormField(
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter email";
                                      }
                                      return null;
                                    },
                                    isDark: isDark,
                                    width: size.width,
                                    focusNode: FocusNode(),
                                    hintText: "New Password",
                                    margin: getMargin(
                                      top: 11,
                                    ),
                                    alignment: Alignment.center,
                                    suffix: Container(
                                      margin: getMargin(
                                        left: 24,
                                        right: 24,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            obscure1 = !obscure1;
                                          });
                                        },
                                        child: CommonImageView(
                                          imagePath: obscure1
                                              ? ImageConstant.visibilityOff
                                              : ImageConstant.visibilityOn,
                                        ),
                                      ),
                                    ),
                                    suffixConstraints: BoxConstraints(
                                      maxWidth: getHorizontalSize(
                                        74.00,
                                      ),
                                      maxHeight: getVerticalSize(
                                        24.00,
                                      ),
                                    ),
                                    isObscureText: obscure1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 1,
                                    right: 24,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                        ),
                                        child: Text(
                                          "Confirm New Password",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.bluegray800A2,
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
                                CustomTextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Password doesn't match";
                                    }
                                    return null;
                                  },
                                  isDark: isDark,
                                  width: size.width,
                                  focusNode: FocusNode(),
                                  hintText: "Confirm New Password",
                                  margin: getMargin(
                                    top: 11,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.centerLeft,
                                  suffix: Container(
                                    margin: getMargin(
                                      left: 24,
                                      right: 24,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          obscure2 = !obscure2;
                                        });
                                      },
                                      child: CommonImageView(
                                        imagePath: obscure2
                                            ? ImageConstant.visibilityOff
                                            : ImageConstant.visibilityOn,
                                      ),
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    maxWidth: getHorizontalSize(
                                      74.00,
                                    ),
                                    maxHeight: getVerticalSize(
                                      24.00,
                                    ),
                                  ),
                                  isObscureText: obscure2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // CustomCheckbox(
                    //   alignment: Alignment.centerLeft,
                    //   text: "Remember me",
                    //   iconSize: 16,
                    //   value: checkbox,
                    //   padding: getPadding(
                    //     left: 48,
                    //     top: 26,
                    //     right: 48,
                    //   ),
                    //   variant: CheckboxVariant.OutlineBlueA100,
                    //   fontStyle:
                    //       CheckboxFontStyle.SourceSansProSemiBold14Gray900,
                    //   onChange: (value) {
                    //     setState(() {});
                    //     checkbox = value;
                    //   },
                    // ),
                  ],
                ),
                CustomButton(
                  isDark: isDark,
                  width: size.width,
                  text: "Save",
                  margin: getMargin(
                    left: 24,
                    right: 24,
                    bottom: 20,
                  ),
                  onTap: () {
                    // if (formKey.currentState!.validate()) {}
                    showDialog(
                      barrierColor: Colors.black.withOpacity(0.5),
                      barrierDismissible: true,
                      context: context,
                      builder: (context) {
                        Future.delayed(Duration(milliseconds: 600), () {
                          Navigator.of(context).pop(true);
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => CongratsScreen()),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
