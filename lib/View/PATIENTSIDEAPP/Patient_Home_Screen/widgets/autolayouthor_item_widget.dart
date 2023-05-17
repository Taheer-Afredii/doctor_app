import 'dart:developer';

import 'package:doctorq/core/app_export.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/data/specialist_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AutolayouthorItemWidget extends StatelessWidget {
  int index;
  AutolayouthorItemWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    log(specialistList[index].img.toString());
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: getHorizontalSize(120),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                16.00,
              ),
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
              colors: index == 0 || index % 3 == 0
                  ? [
                      ColorConstant.redA400E5,
                      ColorConstant.pink300E5,
                    ]
                  : index % 3 == 1
                      ? [
                          Color(0Xff2972FE),
                          Color(0Xff6499FF),
                        ]
                      : [
                          Color(0xFFFFB800),
                          Color(0xFFFFDA7B),
                        ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 24,
                  right: 20,
                ),
                child: Image.asset(
                  "${specialistList[index].img}",
                  height: getVerticalSize(
                    40.00,
                  ),
                  width: getHorizontalSize(
                    43.00,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                height: 42.w,
                width: 92.w,
                child: Center(
                  child: Text(
                    specialistList[index].name,
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 14,
                  right: 20,
                  bottom: 27,
                ),
                child: Text(
                  "${specialistList[index].noOfDoctors} Doctors",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorConstant.whiteA700,
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
      ),
    );
  }
}
