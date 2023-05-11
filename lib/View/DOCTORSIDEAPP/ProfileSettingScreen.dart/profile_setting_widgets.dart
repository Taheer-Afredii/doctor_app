
import 'package:doctorq/View/DOCTORSIDEAPP/ProfileSettingScreen.dart/profilesettingscreen_viewmodel.dart';
import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSeetingScreenMainWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  final VoidCallback onTap;
  final Color? color;
  final Color? iconColor;
  final bool islogout;

  const ProfileSeetingScreenMainWidget({
    super.key,
    required this.text,
    required this.iconData,
    required this.onTap,
    this.color,
    this.iconColor,
    this.islogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 56.h,
        width: double.infinity,
        child: Row(
          children: [
            ProfileSettingScreenIconContainer(
              iconData: iconData,
              color: color ?? ColorConstant.blueA40019,
              iconColor: iconColor ?? blueColor,
            ),
            SizedBox(width: 24.w),
            kText(text: text, fontSize: 16.sp),
            const Spacer(),
            !islogout
                ? Icon(
                    Icons.arrow_forward_ios,
                    size: 24.sp,
                    color: blueColor,
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}

class ProfileSeetingDivider extends StatelessWidget {
  const ProfileSeetingDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: fromHex("#EBEEF2"),
      thickness: 1.sp,
    );
  }
}

class ProfileSettingScreenIconContainer extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  final double? height;
  final double? width;
  final Color? iconColor;

  const ProfileSettingScreenIconContainer({
    super.key,
    required this.iconData,
    this.color,
    this.height,
    this.width,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 56.w,
      height: height ?? 56.h,
      decoration: BoxDecoration(
        color: color ?? ColorConstant.blueA40019,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Icon(
        iconData,
        color: iconColor ?? blueColor,
        size: 24.sp,
      ),
    );
  }
}

class ShowProfileSettingImageWidget extends StatelessWidget {
  const ShowProfileSettingImageWidget({
    super.key,
    required this.model,
  });
  final ProfileSettingScreenViewModel model;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 50.sp,
            backgroundImage: model.image != null
                ? FileImage(model.image!)
                : AssetImage(ImageConstant.doctor7) as ImageProvider,
          ),
          //edit icon
          Positioned(
            bottom: 5.h,
            right: 0,
            child: InkWell(
              onTap: () {
                model.pickImage(ImageSource.gallery);
              },
              child: CircleAvatar(
                radius: 15.r,
                backgroundColor: lightBlueColor,
                child: Icon(
                  Icons.edit,
                  size: 15.sp,
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
