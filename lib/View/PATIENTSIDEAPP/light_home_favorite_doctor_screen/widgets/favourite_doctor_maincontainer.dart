import 'package:doctorq/View/PATIENTSIDEAPP/light_home_favorite_doctor_screen/widgets/bottom_sheet.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/utils/color_constant.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/models/doctors_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteDoctorMainContainer extends StatelessWidget {
  const FavouriteDoctorMainContainer({
    super.key,
    required this.isDark,
    required this.isRtl,
    required this.favDoctorsList,
    required this.index,
    required this.bootomSheetYesOnTap,
    required this.bootomSheetCancelOnTap,
    required this.navigateToScreenTap,
  });

  final bool isDark;
  final bool isRtl;
  final List<DoctorsModel> favDoctorsList;
  final int index;
  final VoidCallback bootomSheetYesOnTap;
  final VoidCallback bootomSheetCancelOnTap;
  final VoidCallback? navigateToScreenTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: GestureDetector(
        onTap: navigateToScreenTap,
        child: Container(
          height: 100.h,
          decoration: BoxDecoration(
            color:
                isDark ? ColorConstant.darkContainer : ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
                color:
                    isDark ? ColorConstant.darkLine : ColorConstant.bluegray50,
                width: 1.w),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: isRtl ? Radius.circular(0.0) : Radius.circular(12.r),
                  bottomLeft:
                      isRtl ? Radius.circular(0.0) : Radius.circular(12.r),
                  bottomRight:
                      isRtl ? Radius.circular(12.r) : Radius.circular(0.0),
                  topRight:
                      isRtl ? Radius.circular(12.r) : Radius.circular(0.r),
                ),
                child: CommonImageView(
                  imagePath: favDoctorsList[index].img,
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                ),
              ),
              HorizontalSpace(width: 20),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              favDoctorsList[index].name,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontFamily: 'Source Sans Pro',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 3,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.star_half,
                                    color: ColorConstant.blueA400,
                                    size: 16.sp,
                                  ),
                                  HorizontalSpace(width: 4),
                                  Padding(
                                    padding: getPadding(
                                      top: 2.h,
                                      bottom: 2.h,
                                    ),
                                    child: Text(
                                      "4.9 (3821 reviews)",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 11.sp,
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
                                top: 3.h,
                              ),
                              child: Text(
                                favDoctorsList[index].specialization,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    11.sp,
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
                    InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        favouriteDoctorScreenBottomSheet(
                          context: context,
                          isDark: isDark,
                          index: index,
                          favDoctorsList: favDoctorsList[index],
                          yesRemoveOnTap: bootomSheetYesOnTap,
                          cancelOnTap: bootomSheetCancelOnTap,
                        );
                      },
                      child: Container(
                          margin: getMargin(left: 20.w, right: 20.w),
                          padding: getPadding(all: 10),
                          height: getVerticalSize(44.h),
                          width: getHorizontalSize(44.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: ColorConstant.blueA400.withOpacity(0.1),
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: ColorConstant.bluedark,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
