import 'package:doctorq/View/DOCTORSIDEAPP/AppointmentScreen/AppointmentTabs/pasttab.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/AppointmentScreen/AppointmentTabs/upcomingtab.dart';
import 'package:doctorq/View/DOCTORSIDEAPP/AppointmentScreen/appointment_viewmodel.dart';
import 'package:doctorq/Widget/doctor_widget/tabbar_container.dart';
import 'package:doctorq/core/constants/assets.dart';
import 'package:doctorq/core/constants/doctor_side_colors.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppointmentViewModel model = Provider.of<AppointmentViewModel>(
      context,
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.h),
              SizedBox(
                height: 250.h,
                child: Stack(
                  children: [
                    Image.asset(
                      homeCard,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 30.h),
                          kText(
                              text: "Hello, Dr Dianee Russle!",
                              fontSize: 16.sp,
                              color: whiteColor),
                          const Spacer(),
                          kText(
                              text: "Your total balance",
                              fontSize: 15.sp,
                              color: whiteColor),
                          kText(
                              text: "\$ 2.4.000",
                              fontSize: 30.sp,
                              color: whiteColor),
                          SizedBox(height: 50.h),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 28.h),
              kText(text: "Appointments", fontSize: 26.sp),
              SizedBox(height: 28.h),
              SizedBox(
                height: 45.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TabBarContainer(
                      text: "Upcoming",
                      color: model.showUpcoming ? blueColor : whiteColor,
                      textColor: model.showUpcoming ? whiteColor : blueColor,
                      onPressed: () {
                        model.toggleShowUpcoming(true);
                      },
                    ),
                    TabBarContainer(
                      text: "Past",
                      color: !model.showUpcoming ? blueColor : whiteColor,
                      textColor: !model.showUpcoming ? whiteColor : blueColor,
                      onPressed: () {
                        model.toggleShowUpcoming(false);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Expanded(
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: model.showUpcoming ? UpcomingTab() : PastTab(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
