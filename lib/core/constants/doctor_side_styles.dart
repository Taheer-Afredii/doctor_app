import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Text kText({
  required String text,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  int? maxLines,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    maxLines: maxLines,
    style: TextStyle(
      color: color ?? blackColor,
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontFamily: "Source Sans Pro",
    ),
  );
}

Widget profileLabelText(
    {required String text, Color? color, double? fontSize, double? padding}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding ?? 28.w),
    child: RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: color ?? ColorConstant.bluegray800A2,
          fontSize: fontSize ?? 14.sp,
          fontWeight: FontWeight.w600,
          fontFamily: "Source Sans Pro",
        ),
        children: [
          TextSpan(
            text: " *",
            style: TextStyle(
              color: Colors.red,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget kLabelText({required String text}) {
  return RichText(
    text: TextSpan(
      text: text,
      style: TextStyle(
        color: lightBlack,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      ),
      children: [
        TextSpan(
          text: " *",
          style: TextStyle(
            color: Colors.red,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

TextStyle kTextStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    color: color ?? blackColor,
    fontSize: fontSize ?? 14.sp,
    fontFamily: "Source Sans Pro",
    fontWeight: fontWeight ?? FontWeight.normal,
  );
}

Text avenir95RomanText({
  required String text,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: TextStyle(
      color: color ?? blackColor,
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.normal,
      // fontFamily: 'Avenir95',
    ),
  );
}

TextStyle avenir55RomanStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    color: color ?? blackColor,
    fontSize: fontSize ?? 14.sp,
    // fontFamily: 'Avenir55',
    fontWeight: fontWeight ?? FontWeight.normal,
  );
}

TextStyle avenir95RomanStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    color: color ?? blackColor,
    fontSize: fontSize ?? 14.sp,
    fontWeight: fontWeight ?? FontWeight.normal,
    // fontFamily: 'Avenir95',
  );
}
