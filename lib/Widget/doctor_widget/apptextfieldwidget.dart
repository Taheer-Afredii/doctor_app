import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double? width;
  final double? height;
  final Icon? icon;
  final IconData? iconData;
  final VoidCallback? suffixonTap;
  final bool? obsecureText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool? readOnly;
  const AppTextFieldWidget(
      {super.key,
      this.suffixonTap,
      required this.controller,
      required this.hintText,
      this.obsecureText,
      this.maxLines,
      this.keyboardType,
      this.readOnly,
      this.icon,
      this.height,
      this.width,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 380.w,
      height: height ?? 55.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 10,
            offset: const Offset(0, 4),
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextFormField(
        readOnly: readOnly ?? false,
        obscureText: obsecureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: whiteColor,
          contentPadding: EdgeInsets.symmetric(horizontal: 26.w),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: const BorderSide(
              color: redColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: BorderSide(
              color: ColorConstant.bluegray50,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: const BorderSide(
              color: redColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: const BorderSide(
              color: blueColor,
              width: 2,
            ),
          ),
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: suffixonTap ?? () {},
            child: Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: Icon(
                iconData,
                color: blackColor.withOpacity(0.5),
                size: 30.sp,
              ),
            ),
          ),
          hintStyle: kTextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: blackColor.withOpacity(0.1),
          ),
        ),
      ),
    );
  }
}

class SearchTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double? width;
  final double? height;
  final Icon? icon;
  final IconData? iconData;
  final VoidCallback? suffixonTap;
  final bool? obsecureText;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool? readOnly;
  final void Function(String)? onChanged;
  const SearchTextFieldWidget(
      {super.key,
      this.suffixonTap,
      required this.controller,
      required this.hintText,
      this.obsecureText,
      this.maxLines,
      this.keyboardType,
      this.readOnly,
      this.icon,
      this.height,
      this.width,
      this.onChanged,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 380.w,
      height: height ?? 55.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 10,
            offset: const Offset(0, 4),
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextFormField(
        onChanged: onChanged,
        readOnly: readOnly ?? false,
        obscureText: obsecureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: fromHex("#F4F6F9"),
          // contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 12.w),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: const BorderSide(
              color: blueColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: BorderSide(
              color: ColorConstant.bluegray50,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: const BorderSide(
              color: redColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r),
            borderSide: const BorderSide(
              color: blueColor,
              width: 2,
            ),
          ),
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: suffixonTap ?? () {},
            child: Icon(
              iconData,
              color: blackColor.withOpacity(0.5),
              size: 30.sp,
            ),
          ),
          hintStyle: kTextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: fromHex("#09101D"),
          ),
        ),
      ),
    );
  }
}

class AboutTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double? width;
  final double? height;
  final Icon? icon;
  final IconData? iconData;
  final VoidCallback? suffixonTap;
  final bool? obsecureText;
  final TextInputType? keyboardType;
  final double? radius;
  const AboutTextFieldWidget(
      {super.key,
      this.suffixonTap,
      required this.controller,
      required this.hintText,
      this.obsecureText,
      this.keyboardType,
      this.icon,
      this.height,
      this.width,
      this.radius,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 380.w,
      height: height ?? 150.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 10,
            offset: const Offset(0, 4),
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        obscureText: obsecureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        maxLines: 5,
        decoration: InputDecoration(
          filled: true,
          fillColor: whiteColor,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 26.w, vertical: 20.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 10.r),
            borderSide: const BorderSide(
              color: redColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 10.r),
            borderSide: BorderSide(
              color: ColorConstant.bluegray50,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 10.r),
            borderSide: const BorderSide(
              color: redColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius ?? 10.r),
            borderSide: const BorderSide(
              color: blueColor,
              width: 2,
            ),
          ),
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: suffixonTap ?? () {},
            child: Icon(
              iconData,
              color: blackColor.withOpacity(0.5),
              size: 30.sp,
            ),
          ),
          hintStyle: kTextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: blackColor.withOpacity(0.1),
          ),
        ),
      ),
    );
  }
}

class MessageTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double? width;
  final double? height;
  final Icon? icon;
  final IconData? iconData;
  final VoidCallback? suffixonTap;
  final bool? obsecureText;
  final TextInputType? keyboardType;

  const MessageTextField(
      {super.key,
      this.suffixonTap,
      required this.controller,
      required this.hintText,
      this.obsecureText,
      this.keyboardType,
      this.icon,
      this.height,
      this.width,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 380.w,
      height: height ?? 150.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 10,
            offset: const Offset(0, 4),
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        obscureText: obsecureText ?? false,
        keyboardType: keyboardType ?? TextInputType.text,
        controller: controller,
        maxLines: 10,
        maxLength: 250,
        decoration: InputDecoration(
          filled: true,
          fillColor: whiteColor,
          // contentPadding: EdgeInsets.symmetric(vertical: 5.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: redColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(
              color: ColorConstant.bluegray50,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: redColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: blueColor,
              width: 2,
            ),
          ),
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: suffixonTap ?? () {},
            child: Icon(
              iconData,
              color: blackColor.withOpacity(0.5),
              size: 30.sp,
            ),
          ),
          hintStyle: kTextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: blackColor.withOpacity(0.1),
          ),
        ),
      ),
    );
  }
}
