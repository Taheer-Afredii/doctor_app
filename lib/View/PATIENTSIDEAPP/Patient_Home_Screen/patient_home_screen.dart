import 'package:animate_do/animate_do.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Home_Screen/widgets/autolayouthor1_item_widget.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Home_Screen/widgets/autolayouthor_item_widget.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/Patient_Home_Top_Doctor/Patient_home_top_doctor_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_home_favorite_doctor_screen/light_home_favorite_doctor_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_home_notification_screen/light_home_notification_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/light_home_search_doctor_screen/light_home_search_doctor_screen.dart';
import 'package:doctorq/View/PATIENTSIDEAPP/practitioner_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_search_view.dart';
import 'package:doctorq/Widget/Patientwidgets/icon_container.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/constants/doctor_side_styles.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/specialist_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PatientHomeScreen extends StatelessWidget {
  TextEditingController autoLayoutVerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.h),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: Row(
                  children: [
                    CommonImageView(
                        imagePath: ImageConstant.appLogo,
                        height: 35.h,
                        width: 113.w),
                    Spacer(),
                    IconConatiner(
                      image: ImageConstant.notifications,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LightHomeNotificationScreen()));
                      },
                    ),
                    SizedBox(width: 16.w),
                    IconConatiner(
                      image: ImageConstant.favorite,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LightHomeFavoriteDoctorScreen()));
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                        isDark: isDark,
                        width: size.width,
                        focusNode: FocusNode(),
                        readOnly: true,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LightHomeSearchDoctorScreen()));
                        },
                        controller: autoLayoutVerController,
                        hintText: "Search",
                        alignment: Alignment.center,
                        suffix: Padding(
                            padding: EdgeInsets.only(
                                right: getHorizontalSize(
                                  15.00,
                                ),
                                left: getHorizontalSize(15)),
                            child: CommonImageView(
                              imagePath: ImageConstant.search,
                            )),
                        suffixConstraints: BoxConstraints(
                          maxWidth: getHorizontalSize(
                            50.00,
                          ),
                          maxHeight: getVerticalSize(
                            50.00,
                          ),
                        ),
                      ),
                      Common24VerticalHeight(),
                      kText(text: "Practitioner", fontSize: 20.sp),
                      FadeInUp(
                        child: Container(
                          height: getVerticalSize(
                            220.00,
                          ),
                          width: getHorizontalSize(
                            528.00,
                          ),
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemCount: specialistList.length,
                            separatorBuilder: (context, index) {
                              return HorizontalSpace(width: 16);
                            },
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PractitionerScreen(
                                                name:
                                                    specialistList[index].name,
                                                index: index,
                                              )));
                                },
                                child: AutolayouthorItemWidget(
                                  index: index,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            kText(
                                text: "Top Doctors",
                                color: ColorConstant.bluegray800,
                                fontSize: 20.sp),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PatientHomeTopDoctorScreen()),
                                );
                              },
                              child: kText(
                                  text: "See all",
                                  color: ColorConstant.bluedark,
                                  fontSize: 16.sp),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.h),
                      FadeInUp(
                        child: Container(
                          height: getVerticalSize(
                            240.00,
                          ),
                          width: getHorizontalSize(
                            512.00,
                          ),
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemCount: 3,
                            separatorBuilder: (context, index) {
                              return HorizontalSpace(width: 16);
                            },
                            itemBuilder: (context, index) {
                              return Autolayouthor1ItemWidget(
                                index: index,
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            kText(
                                text: "Recommendation",
                                color: ColorConstant.bluegray800,
                                fontSize: 20.sp),
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 3,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PatientHomeTopDoctorScreen()),
                                  );
                                },
                                child: kText(
                                    text: "See all",
                                    color: ColorConstant.bluedark,
                                    fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
