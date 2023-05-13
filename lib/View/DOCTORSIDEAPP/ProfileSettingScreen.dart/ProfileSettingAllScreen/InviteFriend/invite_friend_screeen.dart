import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/models/invite_friend_local_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InviteFriendScreen extends StatelessWidget {
  const InviteFriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 28.5.h, horizontal: 24.w),
          child: Column(
            children: [
              AppHeadingRow(text: "Invite Friends"),
              SizedBox(height: 28.h),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: inviteFriendLocalList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: InviteFriendMainContainer(
                          name: inviteFriendLocalList[index].name,
                          phoneNumber: inviteFriendLocalList[index].phoneNumber,
                          image: inviteFriendLocalList[index].image,
                          isInvite: inviteFriendLocalList[index].isInvite,
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InviteFriendMainContainer extends StatelessWidget {
  final String? name;
  final String? phoneNumber;
  final String? image;
  final bool? isInvite;
  final VoidCallback? inviteonTap;
  const InviteFriendMainContainer({
    super.key,
    this.name,
    this.phoneNumber,
    this.image,
    this.isInvite,
    this.inviteonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: fromHex("#EBEEF2")),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              bottomLeft: Radius.circular(12.r),
            ),
            child: Image.asset(image!),
          ),
          SizedBox(width: 16.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kText(
                text: name ?? "",
                fontSize: 16.sp,
              ),
              SizedBox(height: 8.h),
              kText(
                  text: phoneNumber ?? "",
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400),
            ],
          ),
          const Spacer(),
          isInvite == false
              ? AppTransparentButton(
                  width: 80.w,
                  height: 40.h,
                  text: "Invite",
                  onPressed: inviteonTap,
                )
              : AppButton(
                  width: 80.w,
                  height: 40.h,
                  text: "Invited",
                  onPressed: () {},
                ),
          SizedBox(width: 20.w),
        ],
      ),
    );
  }
}
