import 'package:doctorq/View/DOCTORSIDEAPP/AddProfileScreen/addprofile_screen.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/ForgotPasswordMethod/doctor_side_password_method.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SignInScreen/signinscreen_viewmodel.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/SignupScreen/signupscreen.dart';
import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appcontainers.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/Widget/doctor_widget/signup_checkboxwidget.dart';
import 'package:doctorq/Widget/doctor_widget/socialbutton.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignInScreenViewModel model = Provider.of<SignInScreenViewModel>(context);
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
                        Get.offAll(() => const AddProfileScreen());
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
                                        DoctorForgotPasswordMethodScreen()));
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
                              Get.offAll(() => const SignUpScreen());
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
