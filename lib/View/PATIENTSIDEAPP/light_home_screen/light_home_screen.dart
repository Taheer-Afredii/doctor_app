import 'package:animate_do/animate_do.dart';
import 'package:doctorq/View/PatientSideApp/light_home_favorite_doctor_screen/light_home_favorite_doctor_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_home_notification_screen/light_home_notification_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_home_search_doctor_screen/light_home_search_doctor_screen.dart';
import 'package:doctorq/View/PatientSideApp/light_home_top_doctor_screen/light_home_top_doctor_screen.dart';
import 'package:doctorq/View/PatientSideApp/practitioner_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_search_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/specialist_list.dart';
import '../light_home_screen/widgets/autolayouthor1_item_widget.dart';
import '../light_home_screen/widgets/autolayouthor_item_widget.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LightHomeScreen extends StatelessWidget {
  TextEditingController autoLayoutVerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                top: 20,
              ),
              child: Padding(
                padding: getPadding(
                  left: 15,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 4,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // CommonImageView(
                          //   imagePath: ImageConstant.appLogo,
                          //   height: getVerticalSize(36),
                          //   width: getHorizontalSize(36),
                          // ),
                          HorizontalSpace(width: 20),
                          Padding(
                            padding: getPadding(
                              left: 0,
                              top: 8,
                              bottom: 1,
                            ),
                            child: Image.asset(
                              ImageConstant.appLogo,
                              height: getVerticalSize(50),
                              width: getHorizontalSize(113),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LightHomeNotificationScreen()),
                            );
                          },
                          child: Container(
                            padding: getPadding(all: 10),
                            height: getVerticalSize(44),
                            width: getHorizontalSize(44),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorConstant.blueA400.withOpacity(0.1),
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.notifications,
                              color: ColorConstant.blueA400,
                            ),
                          ),
                        ),
                        HorizontalSpace(width: 16),
                        InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LightHomeFavoriteDoctorScreen()),
                            );
                          },
                          child: Container(
                            padding: getPadding(all: 10),
                            height: getVerticalSize(44),
                            width: getHorizontalSize(44),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorConstant.blueA400.withOpacity(0.1),
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.favorite,
                              color: ColorConstant.blueA400,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(
                    top: 26,
                  ),
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
                        margin: getMargin(
                          left: 24,
                          right: 24,
                        ),
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
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 20,
                            top: 30,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Practitioner",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: isDark
                                      ? ColorConstant.whiteA700
                                      : ColorConstant.bluegray800,
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              // Padding(
                              //   padding: getPadding(
                              //     top: 1,
                              //     bottom: 3,
                              //   ),
                              //   child: InkWell(
                              //     onTap: () {
                              //       Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) =>
                              //                 LightHomeSpecialistDoctorScreen()),
                              //       );
                              //     },
                              //     child: Text(
                              //       "See all",
                              //       overflow: TextOverflow.ellipsis,
                              //       textAlign: TextAlign.start,
                              //       style: TextStyle(
                              //         color: ColorConstant.blueA400,
                              //         fontSize: getFontSize(
                              //           16,
                              //         ),
                              //         fontFamily: 'Source Sans Pro',
                              //         fontWeight: FontWeight.w600,
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      FadeInUp(
                        child: Container(
                          height: getVerticalSize(
                            220.00,
                          ),
                          width: getHorizontalSize(
                            528.00,
                          ),
                          child: ListView.separated(
                            padding: getPadding(
                              left: 20,
                              right: 20,
                              top: 27,
                            ),
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
                        child: Padding(
                          padding: getPadding(
                            left: 20,
                            top: 31,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Top Doctor",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: isDark
                                      ? ColorConstant.whiteA700
                                      : ColorConstant.bluegray800,
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
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
                                              LightHomeTopDoctorScreen()),
                                    );
                                  },
                                  child: Text(
                                    "See all",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.bluedark,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      FadeInUp(
                        child: Container(
                          height: getVerticalSize(
                            266.00,
                          ),
                          width: getHorizontalSize(
                            512.00,
                          ),
                          child: ListView.separated(
                            padding: getPadding(
                              left: 20,
                              right: 20,
                              top: 26,
                            ),
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
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 20,
                            top: 10,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Recommendation",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: isDark
                                      ? ColorConstant.whiteA700
                                      : ColorConstant.bluegray800,
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
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
                                              LightHomeTopDoctorScreen()),
                                    );
                                  },
                                  child: Text(
                                    "See all",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.bluedark,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
