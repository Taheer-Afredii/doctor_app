import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppHeadingRow extends StatelessWidget {
  String? text;
  VoidCallback? onPressed;
  AppHeadingRow({
    super.key,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onPressed ??
              () {
                Navigator.pop(context);
              },
          child: const Icon(
            Icons.arrow_back,
            color: lightBlueColor,
          ),
        ),
        SizedBox(width: 20.w),
        kText(text: text ?? "", fontSize: 26.sp)
      ],
    );
  }
}

class AppBackButton extends StatelessWidget {
  const AppBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back,
        color: lightBlueColor,
      ),
    );
  }
}
