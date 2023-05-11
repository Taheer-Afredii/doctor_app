import 'package:doctorq/View/PatientSideApp/light_appointments_step_2_filled_screen/light_appointments_step_2_filled_screen.dart';
import 'package:doctorq/Widget/Patientwidgets/bkBtn.dart';
import 'package:doctorq/Widget/Patientwidgets/common_image_view.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_button.dart';
import 'package:doctorq/Widget/Patientwidgets/custom_icon_button.dart';
import 'package:doctorq/Widget/Patientwidgets/spacing.dart';
import 'package:doctorq/core/utils/size_utils.dart';
import 'package:doctorq/models/doctors_model.dart';
import 'package:doctorq/View/PatientSideApp/light_appointments_review_screen/light_appointments_review_screen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:doctorq/core/app_export.dart';
import 'package:flutter/material.dart';

class LightAppointmentsBookScreen extends StatefulWidget {
  DoctorsModel doctor;
  LightAppointmentsBookScreen({required this.doctor});
  @override
  State<LightAppointmentsBookScreen> createState() =>
      _LightAppointmentsBookScreenState();
}

class _LightAppointmentsBookScreenState
    extends State<LightAppointmentsBookScreen> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = false;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              margin: getMargin(top: 26, bottom: 10),
              child: Padding(
                padding: getPadding(
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        BkBtn(),
                        HorizontalSpace(width: 20),
                        Text(
                          widget.doctor.name,
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
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            setState(() {
                              isFav = !isFav;
                            });
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
                              imagePath: isFav
                                  ? ImageConstant.favorite
                                  : ImageConstant.favoriteBorder,
                              color: ColorConstant.blueA400,
                            ),
                          ),
                        ),
                        HorizontalSpace(width: 16),
                        GestureDetector(
                          onTap: () async {
                            await Share.share(
                                'https://play.google.com/store/apps/details?id=com.mepa.dropship');
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
                              imagePath: ImageConstant.share,
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
                child: Column(
                  children: [
                    VerticalSpace(height: 14),
                    Container(
                      margin: getMargin(left: 20, right: 20),
                      height: getVerticalSize(100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            12.00,
                          ),
                        ),
                        color: isDark
                            ? ColorConstant.darkTextField
                            : ColorConstant.whiteA700,
                        border: Border.all(
                          color: ColorConstant.bluegray50,
                          width: getHorizontalSize(
                            1.00,
                          ),
                        ),
                      ),
                      child: Row(
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
                                    0.00,
                                  ),
                                ),
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                                topRight: Radius.circular(
                                  getHorizontalSize(
                                    12.00,
                                  ),
                                )),
                            child: CommonImageView(
                              imagePath: widget.doctor.img,
                              height: getSize(
                                100.00,
                              ),
                              width: getSize(
                                100.00,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          HorizontalSpace(width: 20),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                top: 10,
                                bottom: 10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.doctor.name,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 3,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CommonImageView(
                                          imagePath: ImageConstant.starHalf,
                                          color: ColorConstant.blueA400,
                                          height: getSize(
                                            17.00,
                                          ),
                                          width: getSize(
                                            17.00,
                                          ),
                                        ),
                                        HorizontalSpace(width: 4),
                                        Text(
                                          "4.7 (4692 reviews)",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Source Sans Pro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(top: 3),
                                    child: Text(
                                      widget.doctor.specialization,
                                      maxLines: 2,
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
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: getMargin(left: 20, right: 20, top: 20),
                        padding: getPadding(left: 30, right: 30),
                        height: getVerticalSize(
                          157.00,
                        ),
                        width: size.width,
                        decoration: BoxDecoration(
                          color: isDark
                              ? ColorConstant.darkContainer
                              : ColorConstant.whiteA700,
                          border: Border.all(
                            color: ColorConstant.blueA400,
                          ),
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              20.00,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                  // isRtl: isRtl,
                                  height: 44,
                                  width: 44,
                                  variant: IconButtonVariant.FillBlueA40019,
                                  shape: IconButtonShape.CircleBorder22,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.patients,
                                    color: ColorConstant.blueA400,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                  ),
                                  child: Text(
                                    "5000+",
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
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "Patients",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        15,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                  // isRtl: isRtl,
                                  height: 44,
                                  width: 44,
                                  variant: IconButtonVariant.FillBlueA40019,
                                  shape: IconButtonShape.CircleBorder22,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.person,
                                    color: ColorConstant.blueA400,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                  ),
                                  child: Text(
                                    "15+",
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
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "Years experiences",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        15,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                  // isRtl: isRtl,
                                  height: 44,
                                  width: 44,
                                  variant: IconButtonVariant.FillBlueA40019,
                                  shape: IconButtonShape.CircleBorder22,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.reviews,
                                    color: ColorConstant.blueA400,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                  ),
                                  child: Text(
                                    "3800+",
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
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 8,
                                    bottom: 3,
                                  ),
                                  child: Text(
                                    "Reviews",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        15,
                                      ),
                                      fontFamily: 'Source Sans Pro',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 16,
                          right: 24,
                        ),
                        child: Text(
                          "About Doctor",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: isDark
                                ? Colors.white
                                : ColorConstant.bluegray800,
                            fontSize: getFontSize(
                              17,
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
                            16,
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
                          top: 16,
                          right: 24,
                        ),
                        child: Text(
                          "Working Time",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: isDark
                                ? Colors.white
                                : ColorConstant.bluegray800,
                            fontSize: getFontSize(
                              17,
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
                          top: 10,
                          right: 24,
                        ),
                        child: Text(
                          "Mon - Fri, 09.00 AM - 20.00 PM",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: getFontSize(
                              16,
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
                        top: 18,
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
                              color: isDark
                                  ? Colors.white
                                  : ColorConstant.bluegray800,
                              fontSize: getFontSize(
                                17,
                              ),
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LightAppointmentsReviewScreen()),
                              );
                            },
                            child: Text(
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
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 16,
                          right: 24,
                        ),
                        child: Text(
                          "Make Appointment",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: isDark
                                ? Colors.white
                                : ColorConstant.bluegray800,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    VerticalSpace(height: 12),
                    Padding(
                      padding: getPadding(right: 20, left: 20),
                      child: DatePickerDialog(
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2022),
                      ),
                    ),
                    CustomButton(
                      isDark: isDark,
                      width: size.width,
                      text: "Book Appointment",
                      margin: getMargin(
                        left: 24,
                        top: 25,
                        right: 24,
                        bottom: 20,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  LightAppointmentsStep2FilledScreen()),
                        );
                      },
                      fontStyle: ButtonFontStyle.SourceSansProSemiBold18,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
