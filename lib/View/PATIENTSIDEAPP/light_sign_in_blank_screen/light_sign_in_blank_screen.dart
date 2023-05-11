import 'package:doctorq/Widget/Patientwidgets/boxshadow.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_checkbox.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_text_form_field.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/home.dart';
import 'package:doctorq/View/PatientSideApp/light_forgot_password_method_screen/light_forgot_password_method_screen.dart';
import 'package:doctorq/core/utils/size_utils.dart';

import 'package:flutter/material.dart';

import '../light_sign_up_blank_screen/light_sign_up_blank_screen.dart';

class LightSignInBlankScreen extends StatefulWidget {
  @override
  State<LightSignInBlankScreen> createState() => _LightSignInBlankScreenState();
}

class _LightSignInBlankScreenState extends State<LightSignInBlankScreen> {
  bool checkbox = false;
  bool obscure = true;

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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(left: 24, right: 24, top: 24),
                    child: Container(
                      height: getVerticalSize(190),
                      width: getHorizontalSize(200),
                      child: Stack(
                        children: [
                          // Image.asset(
                          //   ImageConstant.logoDecoration,
                          //   height: getVerticalSize(190),
                          //   width: getHorizontalSize(200),
                          // ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  ImageConstant.appLogo,
                                  height: getVerticalSize(80),
                                  width: getHorizontalSize(220),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        right: 24,
                      ),
                      child: Text(
                        "Sign in to your account",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            23,
                          ),
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 35,
                        top: 30,
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
                                      left: 15,
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
                                          padding: getPadding(),
                                          child: Text(
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
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter email";
                                        }
                                        return null;
                                      },
                                      isDark: isDark,
                                      width: size.width,
                                      focusNode: FocusNode(),
                                      hintText: "Email",
                                      margin: getMargin(
                                        top: 11,
                                      ),
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
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 24,
                        top: 20,
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
                                            "Password",
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
                                  Container(
                                    decoration: BoxDecoration(
                                        boxShadow: isDark
                                            ? customDarkBoxShadow
                                            : customBoxShadow),
                                    child: CustomTextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter password";
                                        }
                                        return null;
                                      },
                                      isDark: isDark,
                                      width: size.width,
                                      focusNode: FocusNode(),
                                      hintText: "Password",
                                      margin: getMargin(
                                        top: 11,
                                      ),
                                      textInputAction: TextInputAction.done,
                                      alignment: Alignment.center,
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 24,
                                          right: 24,
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              obscure = !obscure;
                                            });
                                          },
                                          child: CommonImageView(
                                            imagePath: obscure
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
                                      isObscureText: obscure,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomCheckbox(
                      alignment: Alignment.centerLeft,
                      text: "Remember me",
                      iconSize: 16,
                      value: checkbox,
                      padding: getPadding(
                        left: 48,
                        top: 22,
                        right: 48,
                      ),
                      onChange: (value) {
                        checkbox = value;
                        setState(() {});
                      },
                    ),
                  ),
                  CustomButton(
                    isDark: isDark,
                    width: size.width,
                    text: "Sign in",
                    margin: getMargin(
                      left: 24,
                      top: 22,
                      right: 24,
                    ),
                    variant: ButtonVariant.FillBlueA400,
                    fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                    alignment: Alignment.center,
                    onTap: () {
                      //   if(formKey.currentState!.validate())
                      // {

                      // }
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
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 20,
                        right: 24,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LightForgotPasswordMethodScreen()),
                          );
                        },
                        child: Text(
                          "Forgot the password?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.blueA400,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 20,
                        right: 24,
                      ),
                      child: Text(
                        "or continue with",
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
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 27,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: CustomButton(
                              isDark: isDark,
                              width: 178,
                              text: "Facebook",
                              variant: ButtonVariant.OutlineGray100,
                              shape: ButtonShape.RoundedBorder12,
                              fontStyle:
                                  ButtonFontStyle.SourceSansProSemiBold16,
                              prefixWidget: Container(
                                padding: getPadding(
                                  left: 8,
                                  top: 3,
                                  right: 8,
                                  bottom: 3,
                                ),
                                margin: getMargin(
                                  right: isRtl ? 0 : 12,
                                  left: isRtl ? 12 : 0,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.indigo600,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.50,
                                    ),
                                  ),
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgFacebook,
                                ),
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 16),
                          Expanded(
                            child: CustomButton(
                              isDark: isDark,
                              width: 178,
                              text: "Google",
                              variant: ButtonVariant.OutlineGray100,
                              shape: ButtonShape.RoundedBorder12,
                              fontStyle:
                                  ButtonFontStyle.SourceSansProSemiBold16,
                              prefixWidget: Container(
                                margin: getMargin(
                                  right: isRtl ? 0 : 12,
                                  left: isRtl ? 12 : 0,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgGoogle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 37,
                        right: 24,
                        bottom: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: Text(
                              "Don’t have an account?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.bluegray400,
                                fontSize: getFontSize(
                                  16,
                                ),
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          HorizontalSpace(width: 8),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      LightSignUpBlankScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Sign up",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.blueA400,
                                fontSize: getFontSize(
                                  16,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
