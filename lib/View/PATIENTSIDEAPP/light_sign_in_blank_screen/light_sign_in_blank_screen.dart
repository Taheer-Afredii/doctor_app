import 'package:doctorq/View/PATIENTSIDEAPP/light_sign_up_blank_screen/patient_sign_up_viewmodel.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appcontainers.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/Widget/doctor_widget/signup_checkboxwidget.dart';
import 'package:doctorq/Widget/doctor_widget/socialbutton.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/View/PatientSideApp/home.dart';
import 'package:doctorq/View/PatientSideApp/light_forgot_password_method_screen/light_forgot_password_method_screen.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
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
    PatientSignInViewModel model = Provider.of<PatientSignInViewModel>(context);
    // bool isDark = Theme.of(context).brightness == Brightness.dark;
    // bool isRtl = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 119.h),
              SizedBox(
                  height: 70.h,
                  width: 220.w,
                  child: Image.asset(logo, fit: BoxFit.contain)),
              SizedBox(height: 45.h),
              kText(text: "Sign in your account", fontSize: 23.sp),
              SizedBox(height: 32.h),
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
                      onPressed: () {
                        //todo>>>>>>>>>>>>>>>>>>>>>>>>>>>>sign in
                        Get.offAll(() => Home());
                      },
                      text: "Sign In",
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightForgotPasswordMethodScreen()));
                          },
                          child: kText(
                              text: "Forgot Password?",
                              fontSize: 14.sp,
                              color: blueColor)),
                    ),
                    SizedBox(height: 32.h),
                    AppCenetrTextContainer(
                      text: "Or Continue with",
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(height: 24.h),
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
                    SizedBox(height: 32.h),
                    SizedBox(
                      width: 400.w,
                      height: 24.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          kText(
                              text: "Don’t have an account?",
                              fontSize: 14.sp,
                              color: blackColor.withOpacity(0.5),
                              fontWeight: FontWeight.w400),
                          SizedBox(width: 5.w),
                          GestureDetector(
                            onTap: () {
                              Get.offAll(() => LightSignUpBlankScreen());
                            },
                            child: kText(
                                text: "Sign up",
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
    );
  }
}
