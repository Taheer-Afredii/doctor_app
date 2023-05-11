import 'package:doctorq/Widget/doctor_widget/appheading_row.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermAndConditionScreen extends StatelessWidget {
  const TermAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          children: [
            AppHeadingRow(text: "Term and Condition"),
            SizedBox(height: 28.h),
            kText(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam posuere velit ut velit placerat, at maximus ex vestibulum. Morbi egestas elit vitae sodales ultricies. Suspendisse ac venenatis magna. In imperdiet arcu nulla, sed laoreet massa bibendum vel. Aenean sit amet nibh mi. Nam aliquet nulla nec enim scelerisque vestibulum. Fusce interdum nisl eu magna posuere egestas. Sed dictum, felis et facilisis luctus, turpis ex dignissim nibh, non finibus nibh nibh eget purus. Proin porta consectetur lacus, eget vehicula risus imperdiet vitae. Vestibulum dignissim justo ac enim maximus ultrices. Donec quis ullamcorper nisi, vel eleifend lectus.',
                fontSize: 16.sp,
                fontWeight: FontWeight.w400),
            const SizedBox(height: 32),
            kText(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam posuere velit ut velit placerat, at maximus ex vestibulum. Morbi egestas elit vitae sodales ultricies. Suspendisse ac venenatis magna. In imperdiet arcu nulla, sed laoreet massa bibendum vel. Aenean sit amet nibh mi. Nam aliquet nulla nec enim scelerisque vestibulum. Fusce interdum nisl eu magna posuere egestas. Sed dictum, felis et facilisis luctus, turpis ex dignissim nibh, non finibus nibh nibh eget purus. Proin porta consectetur lacus, eget vehicula risus imperdiet vitae. Vestibulum dignissim justo ac enim maximus ultrices. Donec quis ullamcorper nisi, vel eleifend lectus.',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      )),
    );
  }
}
