import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../core/utils/color_constant.dart';

class CommonSwitchButton extends StatelessWidget {
  final String text;
  final bool value;
  // final VoidCallback? onChanged;
  final Function(bool)? onChanged;
  const CommonSwitchButton({
    super.key,
    required this.text,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kText(text: text, fontSize: 16.sp),
        const Spacer(),
        FlutterSwitch(
          width: 56.w,
          height: 32.h,
          activeColor: ColorConstant.blueA400,
          activeToggleColor: ColorConstant.whiteA700,
          inactiveColor: ColorConstant.gray500,
          inactiveToggleColor: ColorConstant.whiteA700,
          toggleSize: 24.sp,
          borderRadius: 16.r,
          value: value,
          onToggle: (value) {
            onChanged!(value);
          },
        ),
      ],
    );
  }
}
