import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/core/utils/size_utils.dart';

import '../light_appointments_screen/widgets/autolayouthor2_item_widget.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class LightAppointmentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: size.width,
                    margin: getMargin(
                      top: 26,
                    ),
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 10,
                              bottom: 10,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgAutolayouthor,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 11,
                              bottom: 6,
                            ),
                            child: Text(
                              "Dr. Jenny Wilson",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  26,
                                ),
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 47,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgAutolayouthor44X104,
                              height: getVerticalSize(
                                44.00,
                              ),
                              width: getHorizontalSize(
                                104.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 26,
                    right: 24,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        12.00,
                      ),
                    ),
                    border: Border.all(
                      color: ColorConstant.bluegray50,
                      width: getHorizontalSize(
                        1.00,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                          bottomLeft: Radius.circular(
                            getHorizontalSize(
                              12.00,
                            ),
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage10,
                          height: getSize(
                            100.00,
                          ),
                          width: getSize(
                            100.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                            bottomRight: Radius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 17,
                                right: 20,
                              ),
                              child: Text(
                                "Dr. Jenny Wilson",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 8,
                                right: 20,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CommonImageView(
                                    svgPath: ImageConstant.imgClock,
                                    height: getSize(
                                      16.00,
                                    ),
                                    width: getSize(
                                      16.00,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 1,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "4.9 (3821 reviews)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 10,
                                right: 20,
                                bottom: 13,
                              ),
                              child: Text(
                                "Cardio Specialist -  Nanyang Hospital",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    157.00,
                  ),
                  width: getHorizontalSize(
                    380.00,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
                      ),
                    ),
                  ),
                  child: ListView.builder(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Autolayouthor2ItemWidget();
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 28,
                      right: 24,
                    ),
                    child: Text(
                      "About Doctor",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.bluegray800,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    374.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 16,
                    right: 24,
                  ),
                  child: Text(
                    "Dr. Jenny Wilson is the top most Cardiologist specialist in Nanyang Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.",
                    maxLines: null,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 29,
                      right: 24,
                    ),
                    child: Text(
                      "Working Time",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.bluegray800,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 14,
                      right: 24,
                    ),
                    child: Text(
                      "Mon - Fri, 09.00 AM - 20.00 PM",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 27,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Reviews",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.bluegray800,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "See reviews",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.blueA400,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 29,
                      right: 24,
                    ),
                    child: Text(
                      "Make Appointment",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.bluegray800,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 10,
                      top: 14,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        OutlineGradientButton(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              1.00,
                            ),
                            top: getVerticalSize(
                              1.00,
                            ),
                            right: getHorizontalSize(
                              1.00,
                            ),
                            bottom: getVerticalSize(
                              1.00,
                            ),
                          ),
                          strokeWidth: getHorizontalSize(
                            1.00,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(
                              1,
                              1.0024292469024658,
                            ),
                            end: Alignment(
                              0,
                              0.0024292469024658203,
                            ),
                            colors: [
                              ColorConstant.blueA400,
                              ColorConstant.blue300,
                            ],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(
                              12,
                            ),
                            topRight: Radius.circular(
                              12,
                            ),
                            bottomLeft: Radius.circular(
                              12,
                            ),
                            bottomRight: Radius.circular(
                              12,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  12.00,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 17,
                                    top: 19,
                                    right: 17,
                                  ),
                                  child: Text(
                                    "Mon",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.blueA400,
                                      fontSize: getFontSize(
                                        14,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 17,
                                    top: 10,
                                    right: 17,
                                    bottom: 20,
                                  ),
                                  child: Text(
                                    "12",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.blueA400,
                                      fontSize: getFontSize(
                                        23,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                          ),
                          child: OutlineGradientButton(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                1.00,
                              ),
                              top: getVerticalSize(
                                1.00,
                              ),
                              right: getHorizontalSize(
                                1.00,
                              ),
                              bottom: getVerticalSize(
                                1.00,
                              ),
                            ),
                            strokeWidth: getHorizontalSize(
                              1.00,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(
                                1,
                                1.0024292469024658,
                              ),
                              end: Alignment(
                                0,
                                0.0024292469024658203,
                              ),
                              colors: [
                                ColorConstant.blueA400,
                                ColorConstant.blue300,
                              ],
                            ),
                            corners: Corners(
                              topLeft: Radius.circular(
                                12,
                              ),
                              topRight: Radius.circular(
                                12,
                              ),
                              bottomLeft: Radius.circular(
                                12,
                              ),
                              bottomRight: Radius.circular(
                                12,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 19,
                                      right: 18,
                                    ),
                                    child: Text(
                                      "Tue",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 10,
                                      right: 17,
                                      bottom: 20,
                                    ),
                                    child: Text(
                                      "13",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          23,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                          ),
                          child: OutlineGradientButton(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                1.00,
                              ),
                              top: getVerticalSize(
                                1.00,
                              ),
                              right: getHorizontalSize(
                                1.00,
                              ),
                              bottom: getVerticalSize(
                                1.00,
                              ),
                            ),
                            strokeWidth: getHorizontalSize(
                              1.00,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(
                                1,
                                1.0024292469024658,
                              ),
                              end: Alignment(
                                0,
                                0.0024292469024658203,
                              ),
                              colors: [
                                ColorConstant.blueA400,
                                ColorConstant.blue300,
                              ],
                            ),
                            corners: Corners(
                              topLeft: Radius.circular(
                                12,
                              ),
                              topRight: Radius.circular(
                                12,
                              ),
                              bottomLeft: Radius.circular(
                                12,
                              ),
                              bottomRight: Radius.circular(
                                12,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 19,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "Wed",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 11,
                                      right: 16,
                                      bottom: 20,
                                    ),
                                    child: Text(
                                      "14",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          23,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                          ),
                          child: OutlineGradientButton(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                1.00,
                              ),
                              top: getVerticalSize(
                                1.00,
                              ),
                              right: getHorizontalSize(
                                1.00,
                              ),
                              bottom: getVerticalSize(
                                1.00,
                              ),
                            ),
                            strokeWidth: getHorizontalSize(
                              1.00,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(
                                1,
                                1.0024292469024658,
                              ),
                              end: Alignment(
                                0,
                                0.0024292469024658203,
                              ),
                              colors: [
                                ColorConstant.blueA400,
                                ColorConstant.blue300,
                              ],
                            ),
                            corners: Corners(
                              topLeft: Radius.circular(
                                12,
                              ),
                              topRight: Radius.circular(
                                12,
                              ),
                              bottomLeft: Radius.circular(
                                12,
                              ),
                              bottomRight: Radius.circular(
                                12,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 19,
                                      right: 18,
                                    ),
                                    child: Text(
                                      "Thu",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 11,
                                      right: 17,
                                      bottom: 20,
                                    ),
                                    child: Text(
                                      "15",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          23,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                          ),
                          child: OutlineGradientButton(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                1.00,
                              ),
                              top: getVerticalSize(
                                1.00,
                              ),
                              right: getHorizontalSize(
                                1.00,
                              ),
                              bottom: getVerticalSize(
                                1.00,
                              ),
                            ),
                            strokeWidth: getHorizontalSize(
                              1.00,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(
                                1,
                                1.0024292469024658,
                              ),
                              end: Alignment(
                                0,
                                0.0024292469024658203,
                              ),
                              colors: [
                                ColorConstant.blueA400,
                                ColorConstant.blue300,
                              ],
                            ),
                            corners: Corners(
                              topLeft: Radius.circular(
                                12,
                              ),
                              topRight: Radius.circular(
                                12,
                              ),
                              bottomLeft: Radius.circular(
                                12,
                              ),
                              bottomRight: Radius.circular(
                                12,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 19,
                                      right: 18,
                                    ),
                                    child: Text(
                                      "Fri",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 11,
                                      right: 17,
                                      bottom: 20,
                                    ),
                                    child: Text(
                                      "16",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          23,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                          ),
                          child: OutlineGradientButton(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                1.00,
                              ),
                              top: getVerticalSize(
                                1.00,
                              ),
                              right: getHorizontalSize(
                                1.00,
                              ),
                              bottom: getVerticalSize(
                                1.00,
                              ),
                            ),
                            strokeWidth: getHorizontalSize(
                              1.00,
                            ),
                            gradient: LinearGradient(
                              begin: Alignment(
                                1,
                                1.0024292469024658,
                              ),
                              end: Alignment(
                                0,
                                0.0024292469024658203,
                              ),
                              colors: [
                                ColorConstant.blueA400,
                                ColorConstant.blue300,
                              ],
                            ),
                            corners: Corners(
                              topLeft: Radius.circular(
                                12,
                              ),
                              topRight: Radius.circular(
                                12,
                              ),
                              bottomLeft: Radius.circular(
                                12,
                              ),
                              bottomRight: Radius.circular(
                                12,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 19,
                                      right: 17,
                                    ),
                                    child: Text(
                                      "Mon",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 10,
                                      right: 17,
                                      bottom: 20,
                                    ),
                                    child: Text(
                                      "19",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.blueA400,
                                        fontSize: getFontSize(
                                          23,
                                        ),
                                        fontFamily: 'Source Sans Pro',
                                        fontWeight: FontWeight.w600,
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
                ),
                CustomButton(
                  isDark: isDark,
                  width: 380,
                  text: "\"Book Appointment\"",
                  margin: getMargin(
                    left: 24,
                    top: 25,
                    right: 24,
                    bottom: 20,
                  ),
                  variant: ButtonVariant.FillBlueA100,
                  fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
