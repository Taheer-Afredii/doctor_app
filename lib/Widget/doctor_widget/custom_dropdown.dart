import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCustomDropDown extends StatelessWidget {
  AppCustomDropDown(
      {super.key,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      this.fontStyle,
      this.onChanged,
      this.value});

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final FocusNode? focusNode;

  final Widget? icon;

  final String? hintText;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final List<String>? items;

  final Function(String)? onChanged;

  final Object? value;
  final DropDownFontStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 380.w,
      height: 55.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorConstant.bluegray50,
            blurRadius: 10,
            offset: const Offset(0, 4),
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: DropdownButtonFormField(
        icon: icon,
        iconSize: 40.sp,
        style: kTextStyle(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        decoration: _buildDecoration(),
        items: items?.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
              style: kTextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value.toString());
        },
        value: value,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
        hintText: hintText ?? "",
        hintStyle: _setFontStyle(),
        contentPadding: EdgeInsets.only(left: 28.w, right: 8.w) +
            EdgeInsets.symmetric(vertical: 8.h),
        prefixIcon: prefix,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: ColorConstant.blueA400,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: ColorConstant.bluegray50,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: ColorConstant.bluegray50,
            width: 2,
          ),
        ),
        prefixIconConstraints: prefixConstraints,
        isDense: true,
        filled: true,
        fillColor: ColorConstant.whiteA700);
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.hintColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum DropDownFontStyle {
  PlusJakartaSansMedium14,
}
