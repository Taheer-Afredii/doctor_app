import 'package:doctorq/View/PATIENTSIDEAPP/light_reset_password_screen/reset_password_viewmodel.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/light_reset_password_successful_screen/light_reset_password_successful_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/size_utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LightResetPasswordScreen extends StatefulWidget {
  @override
  State<LightResetPasswordScreen> createState() =>
      _LightResetPasswordScreenState();
}

class _LightResetPasswordScreenState extends State<LightResetPasswordScreen> {
  bool checkbox = false;
  bool obscure1 = true;
  bool obscure2 = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ResetPasswordViewmodel model = Provider.of<ResetPasswordViewmodel>(context);
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
                    SizedBox(height: 24.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          profileLabelText(
                              text: "New Password", fontSize: 16.sp),
                          SizedBox(height: 8.h),
                          AppTextFieldWidget(
                            controller: model.passwordController,
                            hintText: "New Password",
                            iconData: model.isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            obsecureText: model.isPasswordVisible,
                            suffixonTap: () {
                              model.togglePasswordVisibility();
                            },
                          ),
                          SizedBox(height: 24.h),
                          profileLabelText(text: "Confirm New Password"),
                          SizedBox(height: 8.h),
                          AppTextFieldWidget(
                            obsecureText: model.isConfirmPasswordVisible,
                            controller: model.confirmPasswordController,
                            hintText: "Confirm New Password",
                            iconData: model.isConfirmPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            suffixonTap: () {
                              model.toggleConfirmPasswordVisibility();
                            },
                          ),
                        ],
                      ),
                    )

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
                                  builder: (context) =>
                                      LightResetPasswordSuccessfulScreen()),
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
