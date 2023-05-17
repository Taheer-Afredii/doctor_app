import 'package:doctorq/View/PATIENTSIDEAPP/light_profile_blank_screen/light_profile_blank_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_sign_in_blank_screen/light_sign_in_blank_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_sign_up_blank_screen/patient_sign_up_viewmodel.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appcontainers.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/Widget/doctor_widget/circularprogress_dialog.dart';
import 'package:doctorq/Widget/doctor_widget/signup_checkboxwidget.dart';
import 'package:doctorq/Widget/doctor_widget/socialbutton.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/size_utils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LightSignUpBlankScreen extends StatefulWidget {
  @override
  State<LightSignUpBlankScreen> createState() => _LightSignUpBlankScreenState();
}

class _LightSignUpBlankScreenState extends State<LightSignUpBlankScreen> {
  bool checkbox = false;
  bool obscure = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    PatientSignInViewModel model = Provider.of<PatientSignInViewModel>(context);
    // bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(height: 61.h),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageConstant.appLogo,
                          height: 69.h,
                          width: 220.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 45.25.h),
                  Text(
                    "Sign up for free",
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
                  SizedBox(height: 45.25.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        profileLabelText(text: "Email"),
                        SizedBox(height: 8.h),
                        AppTextFieldWidget(
                          controller: model.nameController,
                          hintText: "Email",
                          keyboardType: TextInputType.emailAddress,
                        ),

                        SizedBox(height: 20.h),
                        profileLabelText(text: "Password"),
                        SizedBox(height: 8.h),
                        AppTextFieldWidget(
                          controller: model.passwordController,
                          hintText: "Password",
                          iconData: model.isPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          obsecureText: model.isPasswordVisible,
                          suffixonTap: () {
                            model.togglePasswordVisibility();
                          },
                        ),
                        SizedBox(height: 20.h),
                        profileLabelText(text: "Confirm Password"),
                        SizedBox(height: 8.h),
                        AppTextFieldWidget(
                          obsecureText: model.isConfirmPasswordVisible,
                          controller: model.confirmPasswordController,
                          hintText: "Confirm Password",
                          iconData: model.isConfirmPasswordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          suffixonTap: () {
                            model.toggleConfirmPasswordVisibility();
                          },
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            CheckBoxWidget(
                              value: model.checkBoxValue,
                              onChanged: (val) {
                                model.checkBoxValueChange(val ?? false);
                              },
                            ),
                            kText(text: "Remember me", fontSize: 14.sp),
                          ],
                        ),
                        SizedBox(height: 20.h),
                        //main App button
                        AppButton(
                          onPressed: () async {
                            showCircularProgress(context);
                            await Future.delayed(const Duration(seconds: 4),
                                () {
                              Get.offAll(() => LightProfileBlankScreen());
                            });
                          },
                          text: "Sign Up",
                        ),
                        SizedBox(height: 45.h),
                        AppCenetrTextContainer(
                          text: "Or Continue with",
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(height: 20.h),
                        Row(
                          children: [
                            SocialButton(
                              image: facebook,
                              title: "facebook",
                            ),
                            SizedBox(width: 20.w),
                            SocialButton(
                              image: google,
                              title: "google",
                            ),
                          ],
                        ),
                        SizedBox(height: 24.h),
                        SizedBox(
                          width: 400.w,
                          height: 24.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              kText(
                                  text: "Already have an account?",
                                  fontSize: 14.sp,
                                  color: blackColor.withOpacity(0.5),
                                  fontWeight: FontWeight.w400),
                              SizedBox(width: 5.w),
                              GestureDetector(
                                onTap: () {
                                  Get.offAll(() => LightSignInBlankScreen());
                                },
                                child: kText(
                                    text: "Sign In",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff46BBFF)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
