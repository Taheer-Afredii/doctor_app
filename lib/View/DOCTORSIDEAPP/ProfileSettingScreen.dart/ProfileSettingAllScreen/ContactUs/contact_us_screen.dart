import 'package:doctorq/Widget/doctor_widget/appbutton.dart';
import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/Widget/doctor_widget/apptextfieldwidget.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeadingRow(text: "Contact Us"),
            SizedBox(height: 32.h),
            profileLabelText(text: "Full Name"),
            SizedBox(height: 8.h),
            AppTextFieldWidget(controller: controller, hintText: "Full Name"),
            SizedBox(height: 24.h),
            profileLabelText(text: "Email"),
            SizedBox(height: 8.h),
            AppTextFieldWidget(
              controller: controller,
              hintText: "Email",
              iconData: Icons.email,
            ),
            SizedBox(height: 24.h),
            Row(
              children: [
                profileLabelText(text: "Message"),
                const Spacer(),
                kText(
                    text: "Max 250 words",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ],
            ),
            SizedBox(height: 8.h),
            MessageTextField(
              controller: controller,
              hintText: "message",
              height: 150.h,
            ),
            SizedBox(height: 24.h),
            SendMessageButton(
              text: "Send Message",
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
