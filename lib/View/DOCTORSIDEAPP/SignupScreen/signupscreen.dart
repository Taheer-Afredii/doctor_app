import 'package:doctorq/View/DOCTORSIDEAPP/AddProfileScreen/addprofile_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SignInScreen/signinscreen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SignupScreen/signupscreen_viewmodel.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appcontainers.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/Widget/doctor_widget/circularprogress_dialog.dart';
import 'package:doctorq/Widget/doctor_widget/signup_checkboxwidget.dart';
import 'package:doctorq/Widget/doctor_widget/socialbutton.dart';
import 'package:doctorq/core/constants/assets.dart';
import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpScreenViewModel model = Provider.of<SignUpScreenViewModel>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 60.h),
              kText(text: "Sign up for free", fontSize: 23.sp),
              SizedBox(height: 45.h),
              SizedBox(
                  height: 70.h,
                  width: 220.w,
                  child: Image.asset(logo, fit: BoxFit.contain)),
              SizedBox(height: 45.h),
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
                        await Future.delayed(const Duration(seconds: 4), () {
                          Get.offAll(() => const AddProfileScreen());
                        });
                      },
                      text: "Sign Up",
                    ),
                    SizedBox(height: 20.h),
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
                    SizedBox(height: 45.h),
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
                              Get.offAll(() => const SignInScreen());
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
    );
  }
}
